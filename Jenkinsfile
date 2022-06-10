pipeline {
    agent any
    environment {
        CC = "flag"
        MyError = """${sh(returnStatus: true, script: 'asdf')}"""
        MyCorrect = sh(returnStatus: true, script: 'echo "abc"')
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
                // env.BRANCH_NAME = "shadiao"
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
                echo myname
                sh 'echo $Password'
                // echo $password
                echo 'myname = $myname'
                echo 'YOUR_NAME = $YOUR_NAME'
                // @String.valueOf("123")
            }
        }
        stage('go to end') {
            steps {
                sh "echo ${apple}"
                sh "echo $apple"
                sh 'echo ${apple}'
                sh 'echo $apple'
                sh 'echo $PATH'
                sh 'echo $myname'
                sh 'echo $Password'
                sh 'echo $password'
                sh "echo $apple"
                echo "$myname"
                sh 'echo $PATH'
                sh 'echo $password1'
                echo Password
                // echo '$PATH'
                // echo '$myname'
            }
        }

        stage('second end') {
            steps{
                echo "${Greeting}"
                echo "${params.Greeting}"
                echo "${apple}"
                echo "${env.apple}"
                echo "${BRANCH_NAME}"
                echo "${env.BRANCH_NAME}"
            }
        }
    }
}