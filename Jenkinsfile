pipeline {
    agent any

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

        // stage('Deploy WordPress') {
        //     steps {
        //         script {
        //             dir('/srv/www/wordpress') {
        //                 sh 'ls'
        //                 sh 'docker-compose up -d'
        //                 sh 'ls'
        //             }
        //         }
        //     }
        // }
    }
}
