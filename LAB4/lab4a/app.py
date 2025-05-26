from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from App 1!! Kubernetes, also known as K8s, is an open source system for automating deployment, scaling, and management of containerized applications"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

#docker build -t 1ds22cs141/app1-k8s:latest .
#docker push 1ds22cs141/app1-k8s:latest  
