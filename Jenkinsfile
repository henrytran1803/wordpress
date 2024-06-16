pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                script {
                    sh 'rm -rf /srv/www/wordpress'
                    sh 'git clone https://github.com/henrytran1803/wordpress.git /srv/www/wordpress'
                }
            }
        }
    }
}
