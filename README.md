# Flask App with Docker

A simple **Flask** web application containerized with **Docker**.

---

## 🔗 GitHub Repository

- **GitHub Username:** [Rudra392-netizen](https://github.com/Rudra392-netizen)
- **Repository URL:** [https://github.com/Rudra392-netizen/flask-app-ecs](https://github.com/Rudra392-netizen/flask-app-ecs)

---

## 📋 Prerequisites

Before running this project, install the following tools on your Ubuntu/Linux machine:

### ✅ Python & pip

sudo apt update

sudo apt install -y python3 python3-pip


## virtualenv (recommended)

pip3 install virtualenv

## Git

sudo apt install -y git

## Docker

sudo apt install -y docker.io

sudo systemctl start docker

sudo systemctl enable docker

## To run Docker without sudo (optional):

sudo usermod -aG docker $USER

## Clone the repository:

git clone https://github.com/Rudra392-netizen/flask-app-ecs.git

cd flask-app-ecs

## Create a virtual environment:

python3 -m venv venv

source venv/bin/activate

## Install dependencies:

pip install -r requirements.txt

## Run the Flask app:

flask run

Visit: http://localhost:5000

## 🐳 Run Using Docker

## Step 1: Build the Docker image

docker build -t flask-app .

## Step 2: Run the Docker container

docker run -p 5000:5000 flask-app

Access in browser at: http://localhost:5000

## 🐞 Common Issues & Solutions

Problem	Cause	Solution

❌ flask: command not found	flask not installed globally	Use pip install flask or activate virtualenv properly

⚠️ App not visible in Docker	Flask binds to 127.0.0.1	Use app.run(host="0.0.0.0") in your Flask app

🔁 Container doesn't rebuild	Docker uses old image cache	Run docker build --no-cache -t flask-app .

🔐 Docker permission denied	User not in docker group	Run with sudo or use usermod command above

🔁 Port conflict on 5000	Another app already using port	Use different port: -p 8080:5000

## 🛡 License

This project is licensed under the MIT License.

See the LICENSE file for full terms.


