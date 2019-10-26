from flask import Flask

def create_app(config_object):
    """
    An application factory, as explained here: http://flask.pocoo.org/docs/patterns/appfactories/.
    :param config_object: The configuration object to use.
    """

    app = Flask(__name__)
    app.config.from_object(config_object)

    
    app.logger.info("*********************************")
    app.logger.info("App intialized")
    # app.logger.info(f"Project: {app.config['PROJECT_ID']}")
    app.logger.info(f"Project: {app.config['PROJECT_ID']}")
    app.logger.info(f"Config: {config_object.__name__}")
    app.logger.info("*********************************")

    # register_extensions(app)
    register_blueprints(app)
    return app

def register_blueprints(app):
    from .api.endpoints import blueprint

    app.register_blueprint(blueprint)

    return None