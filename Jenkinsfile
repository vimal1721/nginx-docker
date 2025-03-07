pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-nginx-app"
        CONTAINER_NAME = "nginx-container"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-username/nginx-docker.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh "docker stop ${CONTAINER_NAME} || true"
                    sh "docker rm ${CONTAINER_NAME} || true"
                    sh "docker run -d --name ${CONTAINER_NAME} -p 80:80 ${IMAGE_NAME}"
                }
            }
        }

        stage('Cleanup') {
            steps {
                script {
                    sh "docker image prune -f"
                }
            }
        }
    }
}
