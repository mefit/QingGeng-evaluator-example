from flask import Flask
from flask import request
from application_tasks import some_awesome_algorithm

app = Flask(__name__)

@app.route("/evaluate", methods = ["GET", "POST"])
def evaluate():
    some_awesome_algorithm.delay(request.form['age'])
    return "ok", 200
