pipeline {
    agent any
    environment {
        CC = "flag"
    }
    stages {
        stage('hello') {
            steps {
                echo "Hello World"
            }
        }
        stage('build') {
            steps {
                sh 'make a.txt'
            }
        }
        stage('test') {
            steps {
                sh 'make test'
            }

        }
        stage('deploy') {
            when {
                expression {
                    currentBuild.result == null || currentBuild.result == 'SUCCESS' && env.BRANCH_NAME == 'main'
                }
            }
            environment {
                YOUR_NAME = "what fuck?"
            }
            steps {
                sh 'make deploy'
                echo "${env.BRANCH_NAME}\n${env.BUILD_ID}\n${env.JENKINS_URL}"
                echo "${CC}\n${YOUR_NAME}"
            }
        }
    }
}