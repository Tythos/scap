"""
"""

import os
import json
import pathlib
import sqlite3
import flask
from gevent import pywsgi

PACK_PATH, _ = os.path.split(os.path.abspath(__file__))
APP = flask.Flask(__name__)
SERVER_HOST = os.getenv("SERVER_HOST", "0.0.0.0")
SERVER_PORT = int(os.getenv("SERVER_PORT", "8000"))
STATE_PATH = pathlib.Path(os.getenv("STATE_PATH", PACK_PATH + "/../state/test.db"))

@APP.route("/")
def index():
    """
    """
    return "OK", 200, {
        "Content-Type": "text/plain"
    }

@APP.route("/movies", methods=["GET"])
def get_movies():
    """
    """
    db = sqlite3.connect(STATE_PATH)
    keys = ["year", "title", "score"]
    data = []
    for row in db.cursor().execute("SELECT %s FROM movie" % ", ".join(keys)):
        datum = {}
        for i, k in enumerate(keys):
            datum[k] = row[i]
        data.append(datum)
    return json.dumps(data), 200, {
        "Content-Type": "application/json"
    }


def main():
    """
    """
    print("Serving %s on %s at port %u" % (APP.name, SERVER_HOST, SERVER_PORT))
    pywsgi.WSGIServer((SERVER_HOST, SERVER_PORT), APP).serve_forever()

if __name__ == "__main__":
    main()
