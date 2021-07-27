pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Assemble'
                sh ''' ./gradlew assemble '''
            }
        }
        stage ( 'Archive')
        steps {
            echo 'Archivando...'
            archiveArtifacts: 'build/libs/*.jar'
        }
        }
    }