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
                make
            }
        }
        stage('test') {
            steps {
                make test
            }

        }
        stage('deploy') {
            steps {
                make deploy
            }
        }
    }
}