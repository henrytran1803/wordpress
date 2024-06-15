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
                    sh "docker-compose down"
                }
            }
        }

        stage('Build Docker Images') {
            steps {
                script {
                    sh "docker-compose build"
                }
            }
        }

        stage('Deploy Docker Compose') {
            steps {
                script {
                    sh "docker-compose up -d"
                }
            }
        }
    }
}
