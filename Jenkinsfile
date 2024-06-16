pipeline {
    agent any

    stages {
        stage("verify tooling") {
            steps {
                sh '''
                docker version
                docker info
                docker compose version 
                curl --version
                jq --version
                '''
            }
        }
        stage('Clone Repository') {
            steps {
                script {
                    sh 'rm -rf ~/Desktop/aaa/wordpress'
                    sh 'git clone https://github.com/henrytran1803/wordpress.git ~/Desktop/aaa/wordpress'
                }
            }
        }

        stage('Deploy WordPress') {
            steps {
                script {
                    dir('~/Desktop/aaa/wordpress') {
                        sh 'ls'
                        sh 'docker-compose up -d'
                        sh 'ls'
                    }
                }
            }
        }
    }
}
