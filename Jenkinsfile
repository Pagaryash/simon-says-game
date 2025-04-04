pipeline {
    agent any
    
    stages {
        stage('Verify Docker') {
            steps {
                script {
                    // Verify Docker installation
                    sh 'docker --version'  // This will show the Docker version to confirm Docker is accessible
                    
                    // Optionally, list running Docker containers to confirm further access
                    sh 'docker ps'  // This will list the running containers if Docker is working
                }
            }
        }
    }
}
