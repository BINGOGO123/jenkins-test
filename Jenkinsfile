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
                make a.txt
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