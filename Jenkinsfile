pipeline {
    agent any

    stages{
        stage('Build'){
            steps{
                sh '''
                    echo "Building the App"
                    sleep 3
                '''
            }
        }

        stage('Testing'){
            steps{
                sh '''
                    echo "Testing the App"
                    sleep 3
                '''
            }
        }

        stage('Analyzing'){
            steps{
                sh '''
                    echo "Analyzing the Performance of App"
                    sleep 3
                '''
            }
        }

        stage('Deploy'){
            steps{
                sh '''
                    echo "Deploying the App"
                    sleep 3
                '''
            }
        }
    }
}