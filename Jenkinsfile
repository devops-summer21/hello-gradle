pipeline {
    agent any
    options {
        ansiColor('xterm')
        }

    stages {
        stage('Build') {
            steps {
                echo '\033[34mHello\033[0m \033[33mcolorful\033[0m \033[35mworld!\033[0m'
                sh '''docker-compose build
                docker image tag alpine-jre hello-gradle:MAIN-1.0.${BUILD_NUMBER}'''
            }
        }
         stage('Deploy') {
            steps {
                echo 'Desplegando aplicacion'
                sh '''docker-compose build                
                docker-compose up -d'''
            }
        }
    }
}
