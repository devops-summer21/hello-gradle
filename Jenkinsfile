pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh '''docker-compose build
                'docker image tag hello-gradle:latest  hello-gradle:1.0.${BUILD_NUMBER}-${GIT_COMMIT}
                docker-compose- up -d'''
                echo 'Build'

            }
        }
        stage('Deploying') {
            steps {
                echo 'Done'
            
            }
       
        }
    }
}