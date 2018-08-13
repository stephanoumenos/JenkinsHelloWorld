
pipeline {
    environment {
        GIT_REPOSITORY="git@github.com:stephanoumenos/JenkinsHelloWorld.git"
    }
    
    stages {
        stage('Check contents') {
            steps {
                sh """
                    ls
                    pwd
                """
            }
        }
        stage('Run program') {
            steps {
                sh 'python teste.py'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}

agent any
