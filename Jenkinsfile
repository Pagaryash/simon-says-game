pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'simon-says-game:latest'
        DOCKER_REGISTRY = 'localhost:5000'  // Change to your registry if needed
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from GitHub repository
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Optionally run tests in the container here
                    echo "Running tests... (Add testing scripts if needed)"
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Run the Docker container
                    docker.run(DOCKER_IMAGE, "-d -p 5000:80")
                }
            }
        }
    }

    post {
        always {
            // Clean up Docker containers after the pipeline is done
            sh "docker ps -q | xargs docker stop || true"
            sh "docker ps -aq | xargs docker rm || true"
        }
    }
}
