# pipeline-crafter

---

This project demonstrates how to implement a CI/CD pipeline using **AWS CodeBuild** to automatically build a Docker image and push it to **Docker Hub**. The pipeline is triggered on **GitHub push and pull request merge events**.

---

## Features

- GitHub integration with webhook triggers
- Docker image build via Dockerfile
- Image push to Docker Hub using CodeBuild
- Secure use of environment variables for Docker credentials
- Bash script for local testing and manual builds
- CI/CD steps defined using `buildspec.yml`

---

## Technologies Used

- **AWS CodeBuild**
- **Docker**
- **Docker Hub**
- **AWS CLI**
- **Bash**
- **GitHub**

---

##  Setup Instructions

### 1. Create and Clone GitHub Repository

```bash
git clone https://github.com/your-username/dockerhub-codebuild-cicd.git
cd dockerhub-codebuild-cicd
````

---

### 2. Create Docker Hub Repository

* Go to [Docker Hub](https://hub.docker.com/)
* Create a new public repository (e.g., `your-dockerhub-username/ci-cd-image`)

---

### 3. Write Dockerfile

Create a `Dockerfile` in the root directory:


### 4. Write Bash Script

Create a file `dockerimage__build and docker_push.sh`:

```

Make it executable:

```bash
chmod +x docker_image_build docker_push.sh
```

---

### 5. Create `buildspec.yml`

In the project root or a `CICD/` directory:


---

### 6. Set Environment Variables in CodeBuild

In your CodeBuild project, add the following environment variables:

| Variable              | Description                         |
| --------------------  | ----------------------------------- |
| `DOCKER_HUB_USERNAME` | Your Docker Hub username            |
| `DOCKER_HUB_PASSWORD` | Docker Hub password or access token |
| `DOCKER_HUB_REPO_NAME`| Docker hub repository name          |

> 🔐 Use secure values to avoid exposing secrets.

---

### 7. Create CodeBuild Project

* Source: GitHub (via AWS Connections)
* Buildspec file: `buildspec.yml` 
* Enable: **“Rebuild every time a code change is pushed to this repository”**

---

### 8. Set Up Webhook Event Filters

In CodeBuild, configure webhook triggers for:

* **Push to main**
* **Pull request merges**

---

## ✅ Output

After a successful build, your Docker image will be available on Docker Hub:

```bash
docker pull your-dockerhub-username/ci-cd-image:latest
```

---


