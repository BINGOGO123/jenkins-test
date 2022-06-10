pipeline {
    agent any
    environment {
        CC = "flag"
        password = credentials("zhbpassword")
        Password = credentials("zhbpassword")
        password1 = credentials("zhbpassword")
        myname = String.valueOf(password)
        apple = "this is a apple; ls"
    }
    parameters {
        string(name: "Greeting", defaultValue: "Hello", description: "This is 'hello'!")
    }
    stages {
        stage('hello') {
            steps {
                echo "Hello World"
            }
        }
        stage('build') {
            steps {
                pwsh 'make a.txt'
            }
        }
        stage('test') {
            steps {
                bat 'make test'
            }
        }
    }
}