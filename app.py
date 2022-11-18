from flask import Flask, render_template
from os import environ
from flask_navigation import Navigation

app = Flask(__name__)
nav = Navigation(app)

nav.Bar('top', [
    nav.Item('Home', 'home'),
    nav.Item('Resume', 'resume'),
    nav.Item('Contact', 'contact'),
    nav.Item('Portfolio', 'portfolio')
])

@app.route("/")
def home():
    return render_template('index.html')

@app.route("/resume")
def resume():
    return render_template('resume.html')

@app.route("/contact")
def contact():
    return render_template('contact.html')

@app.route("/portfolio")
def portfolio():
    return render_template('portfolio.html')

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(environ.get("PORT", 8080)))