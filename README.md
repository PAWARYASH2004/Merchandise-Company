# Merchandise Company

## Project Overview
Welcome to the Merchandise Company project! This repository contains the comprehensive source code and resources for managing merchandise.

## Setup Instructions
### Cloning the Repository
To clone the repository, run the following command:
```
git clone https://github.com/PAWARYASH2004/Merchandise-Company.git
```

### Docker Containerization Steps
1. Ensure you have Docker installed on your machine.
2. Navigate to the project directory.
3. Build the Docker image using:
```
docker build -t merchandise-company .
```
4. Run the Docker container:
```
docker run -p 8080:8080 merchandise-company
```

### Jenkins Pipeline Configuration Guide
1. Install Jenkins and necessary plugins.
2. Create a new pipeline job.
3. In the pipeline configuration, define the SCM, build triggers, and build steps:
```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t merchandise-company .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -p 8080:8080 merchandise-company'
            }
        }
    }
}
```  

### Kubernetes Deployment Instructions
1. Ensure that kubectl is installed and configured.
2. Create a deployment YAML file:
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: merchandise-company
spec:
  replicas: 2
  selector:
    matchLabels:
      app: merchandise-company
  template:
    metadata:
      labels:
        app: merchandise-company
    spec:
      containers:
      - name: merchandise-company
        image: merchandise-company
        ports:
        - containerPort: 8080
```
3. Apply the deployment using:
```
kubectl apply -f deployment.yaml
```

### Deployment Visualization Through Docker Desktop
1. Open Docker Desktop and navigate to the "Containers" section.
2. You will see your running containers, including `merchandise-company`.* Explore the logs and performance metrics through the Docker Desktop GUI.

## Conclusion  
This README provides a comprehensive guide for setting up and deploying the Merchandise Company application. For additional questions, please refer to the documentation or open an issue in the repository.