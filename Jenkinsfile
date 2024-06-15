pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Stop and Remove Existing Containers') {
            steps {
                script {
                    sh "sudo docker-compose down"
                }
            }
        }

        stage('Build Docker Images') {
            steps {
                script {
                    sh "sudo docker-compose build"
                }
            }
        }

        stage('Deploy Docker Compose') {
            steps {
                script {
                    sh "sudo docker-compose up -d"
                }
            }
        }
    }
}
