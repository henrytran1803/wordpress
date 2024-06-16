pipeline {
    agent any

    environment {
        DOCKER_COMPOSE_VERSION = "1.29.2" // Thay đổi phiên bản Docker Compose tùy thuộc vào phiên bản bạn muốn sử dụng
    }

    stages {


        stage('Local Setup') {
            steps {
                sh 'rm -rf ~/Desktop/aaa/wordpress'
                sh 'git clone https://github.com/henrytran1803/wordpress.git ~/Desktop/aaa/wordpress'
                sh 'ls'
                sh 'cd docker-compose build'
                sh 'ls'
            }
        }
    }
}
