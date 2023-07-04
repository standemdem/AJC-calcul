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
        stage('build_image') {
            steps {
                sh 'docker build -t exomake .'
                sh 'docker images'
            }
        }
        stage('deploy') {
            steps {
                echo 'Deploying...'
                sh 'docker run exomake'
            }
        }
        stage('Greet') {
            steps {
                echo "${params.GREETING}, ${env.NAME}!"
            }
        }
    }
}

