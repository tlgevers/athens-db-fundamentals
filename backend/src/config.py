class Config:
    PROJECT_ID = "Athens Database Fundamentals by Trevor Gevers"


class DevConfig(Config):
    DEBUG = 1
    ENV = "development"


class ProdConfig(Config):
    ENV = "production"


