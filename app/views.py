from flask import Flask, render_template, request, session, jsonify, abort
from app import app
from app import models
from app import functions


@app.route("/", methods=["GET"])
def index():
    return render_template('index.html')

@app.route('/hello')
def hello():
    return render_template('hello.html')

@app.route('/projects/')
def projects():
    return render_template('projects/projects_index.html')
