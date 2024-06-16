pipeline {
    agent any

    stages {
        stage('Delete Old WordPress') {
            steps {
                script {
                    sh 'sudo rm -rf /srv/www/wordpress'
                }
            }
        }

        stage('Clone Repository') {
            steps {
                script {
                    sh 'sudo git clone https://github.com/henrytran1803/wordpress.git /srv/www/wordpress'
                }
            }
        }

        stage('Deploy WordPress') {
            steps {
                script {
                    dir('/srv/www/wordpress') {
                        sh 'sudo docker-compose -f /srv/www/wordpress/docker-compose.yml build'
                        sh 'sudo docker-compose -f /srv/www/wordpress/docker-compose.yml up -d'
                    }
                }
            }
        }
    }
}
