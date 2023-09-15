from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def main():
    return "main page"

@app.route('/play')
def play():
    return render_template("index.html")

@app.route('/play/<int:num>')
def play_times(num):
    return render_template("index.html", num = num)

if __name__ == "__main__":
    app.run(debug=True)