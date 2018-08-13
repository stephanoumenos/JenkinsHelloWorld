
pipeline {
    environment {
        GIT_REPOSITORY="git@github.com:stephanoumenos/JenkinsHelloWorld.git"
    }
    
    stages {
        stage('Checkout Code') {
            steps {
                git clone $GIT_REPOSITORY repo/
                cd repo/
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
