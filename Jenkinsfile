pipeline {
    agent any

    stages{
        stage('Pushing'){
            steps{
                sh '''
                    echo "Pushing the App"
                '''
            }
        }

       stage('Build'){
            steps{
                sh '''
                    echo "Building the App and Testing"
                    ./builds/build.sh
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
