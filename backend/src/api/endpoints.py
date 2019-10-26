from flask import Blueprint, current_app

blueprint = Blueprint("main", __name__)

@blueprint.route("/", methods=["GET"])
def hello_world():
    return f"Hello from {current_app.config['PROJECT_ID']}", 200