pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker-compose build 
                docker image tag hello-gradle:latest  hello-gradle:1.0.${BUILD_NUMBER}-${GIT_COMMIT}''
            }
        }
        stage('Deploying') {
            steps {
                sh 'docker-compose up -d''
            
            }
       
        }
    }
}