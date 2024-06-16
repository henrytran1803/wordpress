pipeline {
    agent any

    stages {
        stage('Check Environment') {
            steps {
                script {
                    sh '#!/bin/bash\nwhich sudo'
                }
            }
        }

        stage('Delete Old WordPress') {
            steps {
                script {
                    sh '#!/bin/bash\nsudo rm -rf /srv/www/wordpress'
                }
            }
        }

        stage('Clone Repository') {
            steps {
                script {
                    sh '#!/bin/bash\nsudo git clone https://github.com/henrytran1803/wordpress.git /srv/www/wordpress'
                }
            }
        }

        stage('Deploy WordPress') {
            steps {
                script {
                    dir('/srv/www/wordpress') {
                        sh '#!/bin/bash\nsudo docker-compose -f /srv/www/wordpress/docker-compose.yml build'
                        sh '#!/bin/bash\nsudo docker-compose -f /srv/www/wordpress/docker-compose.yml up -d'
                    }
                }
            }
        }
    }
}
