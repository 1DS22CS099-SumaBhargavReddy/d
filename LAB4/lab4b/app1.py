from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def index():
    app_env = os.getenv("APP_ENV", "not set")
    db_password = os.getenv("DB_PASSWORD", "not set")
    return f"APP_ENV: {app_env} <br> DB_PASSWORD: {db_password}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

# docker build -t 1ds22cs141/python-app:latest . 
#docker push 1ds22cs141/python-app:latest 
