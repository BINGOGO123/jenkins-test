pipeline {
    agent any
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
                    currentBuild.result == null || currentBuild.result == 'SUCCESS'
                }
            }
            steps {
                sh 'make deploy'
                echo "${env.BRANCH_NAME}\n${env.BUILD_ID}\n${env.JENKINS_URL}"
            }
        }
    }
}