pipeline {
    agent any
    environment {
        CC = "flag"
        MyError = """${sh(returnStatus: true, script: 'asdf')}"""
        MyCorrect = sh(returnStatus: true, script: 'echo "abc"')
        password = credentials("zhbpassword")
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
                YourNumber = 123
            }
            steps {
                sh 'make deploy'
                echo "${env.BRANCH_NAME}\n${env.BUILD_ID}\n${env.JENKINS_URL}"
                echo "${CC}\n${YOUR_NAME}\n${YourNumber}"
                sh(
                    returnStdout: true,
                    script: "echo 'fuck you ${CC}'"
                )
                sh "echo '${MyError}\n${MyCorrect}'"
                sh "echo '${new Error("That is fine!")}'"
                echo password
                String.valueOf(123)
            }
        }
    }
}