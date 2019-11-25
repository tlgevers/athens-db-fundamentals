from flask import Blueprint, current_app, jsonify, request
import json
from src.mysql import db
from sqlalchemy.sql import text
import datetime

blueprint = Blueprint("main", __name__)
BASE="/api"

@blueprint.route(BASE+"/hello-world", methods=["GET"])
def hello_world():
    return f"Hello from {current_app.config['PROJECT_ID']}", 200

@blueprint.route(BASE+"/department", methods=["GET"])
def department():
    with db.engine.connect() as conn:
        statement = text("""
            select * from department;
        """)
        results = conn.execute(statement)
        data = to_json(results)
        return jsonify(data)


@blueprint.route(BASE+"/worker/evaluation", methods=["POST"])
def worker_evaluation():
    data = request.get_json()
    current_app.logger.info(f"worker/evaluation/{data}")
    return jsonify({"res": "worker_evaluation submitted"}), 200

def to_json(data):
    result = []
    for d in data:
        current_app.logger.info(f"results: {d.items()}")
        obj = {}
        for key,value in d.items():
            if isinstance(value, datetime.date):
                obj[key] = to_date_string(value)
                continue
            obj[key] = value
        result.append(obj)
    current_app.logger.info(f"result {result}")
    return result

def to_date_string(d):
    date = datetime.datetime.strftime(d, "%Y/%m/%d")
    return date
        
