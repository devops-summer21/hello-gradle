pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
                    def customImage = docker.build("hello-gradle:1.0.${BUILD_NUMBER}-${GIT_COMMIT}:${env.BUILD_ID}")
                    customImage.push()
                }
            }
        }
    }
}