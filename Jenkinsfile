pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build WordPress and MySQL Images') {
            steps {
                script {
                    sh "docker-compose build"
                }
            }
        }

        stage('Deploy WordPress and MySQL') {
            steps {
                script {
                    sh "docker-compose up -d"
                }
            }
        }
    }

    post {
        always {
            script {
                sh "docker-compose down"
            }
        }
    }
}
