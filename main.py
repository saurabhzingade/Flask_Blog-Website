from flask_sqlalchemy import SQLAlchemy
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<p>Hello, World!</p>"

app.run()