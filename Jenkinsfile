pipeline {
    agent any

    parameters {
        string(name: 'GREETING', defaultValue: 'Hello', description: 'Greeting to display')
    }

    environment {
        NAME = 'Jenkins'
    }

    stages {
        stage('build') {
            steps {
                sh 'make build'
                echo 'Building...'
            }
        }
        stage('testTXT') {
            steps {
                sh 'make testTXT'
                echo 'Testing...'
            }
        }
        stage('testPROG') {
            steps {
                sh 'make testPROG'
                echo 'testing program...'
            }
        }
        stage('deploy') {
            steps {
                sh 'make deploy'
                echo 'Deploying...'
            }
        }
        stage('Greet') {
            steps {
                echo "${params.GREETING}, ${env.NAME}!"
            }
        }
    }
}

