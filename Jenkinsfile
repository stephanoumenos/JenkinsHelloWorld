
pipeline {
    agent any
    environment {
        GIT_REPOSITORY="git@github.com:stephanoumenos/JenkinsHelloWorld.git"
    }
    
    stages {
        stage('Code Checkout') {
            steps {
                                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/stephanoumenos/JenkinsHelloWorld']]])
            }
        }

        stage('Check contents') {
            steps {
                sh 'ls'
                sh 'pwd'
            }
        }

        stage('Run program') {
            steps {
                sh 'python teste.py'
            }
        }

    }
}

