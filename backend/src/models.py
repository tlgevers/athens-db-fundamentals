from mysql import db

class Test(db.Model):
    __table__ = db.Model.metadata.tables["test"]