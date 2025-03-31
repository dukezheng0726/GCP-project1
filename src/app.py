from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "This is Yan's GCP project Demo!!(HTTPS)"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
