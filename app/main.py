from flask import Flask
app = Flask(__name__)

@app.get("/")
def home():
    return "hello from cloudy-notes"

@app.get("/healthz")
def health():
    return {"ok": True}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

