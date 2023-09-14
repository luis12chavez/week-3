# import flask so we can see it
from flask import Flask, render_template

# creates our flask app
app = Flask(__name__)

@app.route('/')
def index():
    return 'first end-point'

@app.route('/route2')
def route2():
    return 'route 2'

@app.route('/html')
def html_page():
    return render_template('index.html') 



if __name__ == "__main__":
    app.run(debug=True)