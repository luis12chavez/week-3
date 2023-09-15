from flask import Flask, render_template  # Import Flask to allow us to create our app
app = Flask(__name__)    # Create a new instance of the Flask class called "app"

# @app.route('/')          # The "@" decorator associates this route with the function 
# # immediately following
# def hello_world():
#     return 'Hello World!'  # Return the string 'Hello World!' as a response

@app.route('/')
def index():
    return render_template("index.html", phrase = "hello", times = 5)

@app.route('/m')
def hello_world2():
    return 'Hello World-2!'  # Return the string 'Hello World!' as a response

@app.route('/success')
def success():
    return "SUCCESS"

# @app.route('/hello/<name>/<int:num>')
# def hello(name, num):
#     return f"hello {name * num} " 

@app.route('/hello-2/<name>/<int:num>')
def hello(name, num):
    return render_template("hello.html", name = name, num = num) 


if __name__=="__main__":   # Ensure this file is being run directly and not from a different module    
    app.run(debug=True)    # Run the app in debug mode.


# app.run(debug=True, host="localhost", port=8000) Alternative  port

