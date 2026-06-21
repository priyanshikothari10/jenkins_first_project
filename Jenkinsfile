pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Validate Shell Script') {
            steps {
                sh 'bash -n nginx.sh'
                sh 'chmod +x nginx.sh'
            }
        }

        stage('Package Artifact') {
            steps {
                sh 'mkdir -p build && cp index.txt nginx.sh build/'
                archiveArtifacts artifacts: 'build/*', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'Jenkins pipeline completed successfully.'
        }
    }
}
