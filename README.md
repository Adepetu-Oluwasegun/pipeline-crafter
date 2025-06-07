# pipeline-crafter

# CI/CD Pipeline: Docker Image Build & Push to Docker Hub

This project sets up a CI/CD pipeline using AWS CodeBuild to automatically build and push a Docker image to Docker Hub on each commit to the main branch.

## 🛠️ Technologies Used

- Docker
- GitHub
- AWS CodeBuild
- Docker Hub
- Amazon Linux 2


## 🔧 Setup Instructions

1. **Clone this repository**
   ```bash
   git clone https://github.com/your-username/repo-name.git
````

2. **Create a DockerHub Repository**

3. **Set up AWS CodeBuild**

   * Connect to GitHub with a Personal Access Token.
   * Use environment variables `DOCKERHUB_USER`, `DOCKERHUB_PASSWORD`, ``.
   * Make sure to give the build project access to Docker.

4. **On Every Commit**

   * CodeBuild will:

     * Build the Docker image using the Dockerfile.
     * Push the image to DockerHub.

##  Security Notes

* Use CodeBuild’s secure environment variable storage.
* Never hard-code secrets in files.

## 📤 Output

A Docker image pushed to:

```bash
docker pull your-dockerhub-username/ci-cd-image:latest
```
