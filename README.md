# Docker + GitLab CI/CD Demo Project

This project demonstrates building Docker images, automating CI/CD pipelines with GitLab, and hosting a simple static website using NGINX.

The project is fully automated: whenever a change is pushed to GitLab, the pipeline builds the Docker image and tags it appropriately.

---

## 🛠 Technologies Used

- **Docker** – containerization
- **NGINX** – serving static HTML
- **GitLab CI/CD** – automated pipelines
- **GitLab Container Registry** – storing Docker images
- **HTML** – static website

---

## 📂 Project Structure

docker-nginx-gitlab-ci/
├── Dockerfile # Builds NGINX container with static site
├── .gitlab-ci.yml # CI/CD pipeline definition
├── public/
│ └── index.html # Sample static website
└── README.md # Project documentation


---

## 🐳 Dockerfile

```dockerfile
FROM nginx:alpine
COPY ./public /usr/share/nginx/html


Copies the static website into the NGINX container

Creates a ready-to-run Docker image

⚙ GitLab CI/CD Pipeline

Runs automatically on every push

Builds the Docker image

Tags images:

latest → default branch (e.g., main)

Branch name → other branches

Pushes image to GitLab Container Registry

Demonstrates branch-based tagging and automated CI/CD workflows.

🔍 Verify Docker Image

After building the Docker image:

docker build -t my-nginx-app .


You can check that index.html exists and view its content:

# Quick check without interactive shell
docker run --rm my-nginx-app cat /usr/share/nginx/html/index.html


This will print the contents of the file, confirming the static website is correctly copied into the container.

🚀 Running Locally

To run the Docker container on your computer:

docker run -p 8080:80 my-nginx-app


Open your browser and navigate to:

http://localhost:8080


You should see the message:

Testing Workflow creation with GitLab

🎯 Learning Goals Achieved

Docker image creation

Docker-in-Docker CI/CD pipelines

GitLab pipeline debugging

Branch-based Docker image tagging

Public repository best practices

📌 Future Improvements

Add GitHub Actions workflow to replicate CI/CD

Deploy to free cloud platforms (Render, Railway, Fly.io)

Improve HTML page for demo purposes

Add version tagging and environment-specific builds

Maintainer

ABDULLAH
---
