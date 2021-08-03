pipeline {
    agent any
    stages {
        stage('Build Image') {
            steps {
                sh 'docker build -t flask .'
            }
        }
        stage('Tag Image') {
            steps {
                sh 'docker tag flask:latest karthiksonti/flask:latest'
            }
        }
        stage('Push Image') {
            steps {
                sh 'docker push karthiksonti/flask:latest'
            }
        }
    }
}