pipeline {
    agent any

    stages {
        stage('Local Setup') {
            steps {
                sh 'rm -rf /Desktop/aaa/wordpress'
                sh 'git clone https://github.com/henrytran1803/wordpress.git /Desktop/aaa/wordpress'
                sh 'cd /Desktop/aaa/wordpress && docker-compose build'
            }
        }
    }
}
