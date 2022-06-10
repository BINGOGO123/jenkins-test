pipeline {
    agent any
    environment {
        CC = "flag"
        Error = """${sh(returnStatus: true, script: 'asdf')}"""
        Correct = sh(returnStatus: true, script: 'echo "abc"')
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
                sh(
                    returnStdout: true,
                    script: "echo 'fuck you ${CC}'"
                )
                sh "echo '${Error}\n${Correct}'"
            }
        }
    }
}