pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {	    
	stage('gitlab') {
          steps {
             echo 'Notify GitLab'
             updateGitlabCommitStatus name: 'build', state: 'pending'
             updateGitlabCommitStatus name: 'build', state: 'success'
		}
            }  
        stage('Build') {
            steps {
                echo 'Building..'
		withGradle {
			sh './gradlew assemble'
		}
            }
            post {
                success {
                   archiveArtifacts artifacts: 'build/libs/*.jar'
                }
            }

        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
