pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-flask-image:latest .'
            }
        }
        stage('Test') {
            steps {
                sh 'sleep 1'
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