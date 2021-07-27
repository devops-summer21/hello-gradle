pipeline {
    agent any
    options {
        ansiColor('xterm')
        }

    stages {
        stage('Build') {
            steps {
                echo '\033[34mConstruyendo\033[0m \033[33mcolorful\033[0m \033[35mworld!\033[0m'
                withGradle {
                       sh './gradlew assemble'              
            }
        }
         post {
             sucess {
             archiveArtifacts artificats: 'build/libs/*.jar'
             }
        }

         stage('Archive') {
            steps {
            }
        }
         stage('Test') {
            steps {
               echo 'Testing...'
            }
         stage('Deploy') {
            steps {
               echo 'Deploying...'
            }
        }
    }
}
