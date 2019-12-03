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
    workername = data.get("workername")
    ssn = data.get("ssn")
    jobtitle = data.get("jobtitle")
    evaluationdate = data.get("evaluationdate")
    ratername = data.get("ratername")
    rating = data.get("rating")
    ratingcomment = data.get("ratingcomment")

    with db.engine.connect() as conn:
        statement = text(
            "INSERT INTO EvaluationProject "
            f"values ('{workername}', '{ssn}', '{jobtitle}', '{evaluationdate}', '{ratername}', '{rating}', '{ratingcomment}');"
        )
        try:
            results = conn.execute(statement)
        except Exception as e:
            current_app.logger.error(f"An error occurred: {e}")
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
        
