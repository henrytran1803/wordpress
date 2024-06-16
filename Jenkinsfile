pipeline {
    agent any

    environment {
        DOCKER_COMPOSE_VERSION = "1.29.2" // Thay đổi phiên bản Docker Compose tùy thuộc vào phiên bản bạn muốn sử dụng
    }

    stages {
        stage('Install Docker Compose') {
            steps {
                script {
                    sh 'curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose'
                    sh 'chmod +x /usr/local/bin/docker-compose'
                }
            }
        }

        stage('Local Setup') {
            steps {
                sh 'rm -rf ~/Desktop/aaa/wordpress'
                sh 'git clone https://github.com/henrytran1803/wordpress.git ~/Desktop/aaa/wordpress'
                sh 'ls'
                sh 'cd ~/Desktop/aaa/wordpress && docker-compose build'
                sh 'ls'
            }
        }
    }
}
