
pipeline {
    agent any
    environment {
        GIT_REPOSITORY="git@github.com:stephanoumenos/JenkinsHelloWorld.git"
    }

    stages {
        stage('Code Checkout') {
            steps {
                                checkout([$class: 'GitSCM', branches: [[name: '*/NGIX/TOMCAT']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/stephanoumenos/JenkinsHelloWorld']]])
            }
        }

        stage('Check contents') {
            steps {
                sh 'ls'
                sh 'pwd'
            }
        }

        stage('Build image using docker-compose.yml') {
            steps {
                sh 'docker-compose up'
            }
        }
        
        // Now we should have our Tomcat and Nginx dockers up and running

        stage('Check if Tomcat is running') {
            steps {
                sh 'check-if-tomcat-is-running.sh'
            }
        }

    }
}
