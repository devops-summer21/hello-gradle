pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                docker {
                    image tag hello-gradle:latest  hello-gradle:1.0.${BUILD_NUMBER}-${GIT_COMMIT}
                    // Run the container on the node specified at the top-level of the Pipeline, in the same workspace, rather than on a new node entirely:
                    reuseNode true
                }
            }
            steps {
                sh 'gradle --version'
            }
        }
    }
}




}