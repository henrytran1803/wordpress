pipeline {
    agent any

    options {
        // Execute the entire pipeline with elevated privileges
        skipDefaultCheckout(true)
    }

    stages {
        stage('Delete Old WordPress') {
            steps {
                script {
                    sh 'rm -rf /srv/www/wordpress'
                }
            }
        }

        stage('Clone Repository') {
            steps {
                script {
                    sh 'git clone https://github.com/henrytran1803/wordpress.git /srv/www/wordpress'
                }
            }
        }

        stage('Deploy WordPress') {
            steps {
                script {
                    dir('/srv/www/wordpress') {
                        sh 'docker-compose -f /srv/www/wordpress/docker-compose.yml build'
                        sh 'docker-compose -f /srv/www/wordpress/docker-compose.yml up -d'
                    }
                }
            }
        }
    }
}
