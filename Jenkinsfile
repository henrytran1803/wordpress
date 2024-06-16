pipeline {
    agent any

    stages {
        stage('Remote Setup') {
            steps {
                script {
                    sshagent(credentials: ['1']) {
                        sh 'ssh parallels@10.211.55.4 "sudo rm -rf wordpress"'
                        sh 'ssh parallels@10.211.55.4 "git clone https://github.com/henrytran1803/wordpress.git wordpress"'
                        sh 'ssh parallels@10.211.55.4 "cd wordpress && sudo docker-compose build"'
                    }
                }
            }
        }
    }
}
