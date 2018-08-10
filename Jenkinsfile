pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'sleep 3'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t my-flask-image:latest .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker container rm -f flask'
                sh 'docker run --rm -d -p 80:5000 --name flask my-flask-image'
            }
        }
    }
}