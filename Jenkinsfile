pipeline {
    agent any

    stages{
        stage('Pulling'){
            steps{
                sh '''
                    echo "Pulling the App"
                '''
            }
        }

       stage('Build'){
            steps{
                sh '''
                    echo "Building the App"
                    ./scripts/build.sh
                '''
            }
        }

        stage('Deploy'){
            steps{
                sh '''
                    echo "Deploying the App and making a simple cURL"
                    ./scripts/deploy.sh
                '''
            }
        }
    }
}
