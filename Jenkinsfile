pipeline {
    agent any

    stages {
        stage('Local Setup') {
            steps {
                sh 'sudo rm -rf /Desktop/wordpress'
                sh 'git clone https://github.com/henrytran1803/wordpress.git /Desktop/wordpress'
                sh 'cd /Desktop/wordpress && sudo docker-compose build'
            }
        }
    }
}
