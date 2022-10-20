from flask import Flask, Markup

app = Flask(__name__)

@app.route("/")
def home():
    return Markup("<h1>I'm running from the container</h1></br><h3>how cool is this? 😎</h3>")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=7777, debug=True)