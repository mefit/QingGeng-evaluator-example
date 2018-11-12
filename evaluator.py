from flask import Flask
from flask import request
app = Flask(__name__)

@app.route("/evaluate", methods = ["GET", "POST"])
def evaluate():
    # some_awesome_algorithm(request.form) # how to call this async?
    return "ok", 200


def some_awesome_algorithm(params):
    app.logger.debug(params)
    return
