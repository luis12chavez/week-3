from flask import Flask, render_template, request, redirect, session
app = Flask(__name__)
app.secret_key = 'keep it secret, keep it safe' # set a secret key for security purposes

# our index route will handle rendering our form
@app.route('/')
def index():
    return render_template("index.html")


    # Never render a template on a POST request.
    # Instead we will redirect to our index route.
@app.route('/users', methods=['POST'])
def create_user():
        print("Got Post Info")
        print(request.form)
        print(request.form["email"]) # grabbing the users email they typed in to the console 
        # Here we add two properties to session to store the name and email
        session['userName'] = request.form['name']
        session['userEmail'] = request.form['email']
        return redirect("/show")


# adding this method
@app.route("/show")
def show_user():
    print("Showing the User Info From the Form")
    print(request.form)
    return render_template('show.html', name_on_template = session['userName'],
email_on_template = session['userEmail'])



if __name__ == "__main__":
    app.run(debug=True)

