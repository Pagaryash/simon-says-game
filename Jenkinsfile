pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                echo 'Cloning the repository...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t simon-says-game .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo 'Running Docker container...'
                sh '''
                    docker stop simon-says-container || true
                    docker rm simon-says-container || true
                    docker run -d -p 5000:80 --name simon-says-container simon-says-game
                '''
            }
        }
    }
}


