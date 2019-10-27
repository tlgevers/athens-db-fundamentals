import os

DB_USER = os.getenv("MYSQL_USER")
DB_PASS = os.getenv("MYSQL_ROOT_PASSWORD")
DB_NAME = os.getenv("MYSQL_DATABASE")

class Config:
    PROJECT_ID = "Athens Database Fundamentals by Trevor Gevers"
    SQLALCHEMY_DATABASE_URI = (
        f"mysql+pymysql://{DB_USER}:{DB_PASS}@db:3306/{DB_NAME}"
    )


class DevConfig(Config):
    DEBUG = 1
    ENV = "development"


class ProdConfig(Config):
    ENV = "production"


