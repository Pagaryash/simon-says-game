pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                echo 'Cloning the repository...'
                // No need here, Jenkins clones it automatically via SCM
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("simon-says-game")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    dockerImage.run("-d -p 5000:80")
                }
            }
        }
    }
}

