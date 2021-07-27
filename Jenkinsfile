pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Construyendo'
                sh '''docker-compose build
docker image hello-gradle:latest tag hello hello-gradle:MAIN-1.0.${BUILD_NUMBER}-${GIT_COMMIT}'''
            }

        }
           stage('Deploy') {
            steps {
                echo 'Desplegando aplicación'
                sh '''docker-compose up -d'''
            }
            
        }
    }

}