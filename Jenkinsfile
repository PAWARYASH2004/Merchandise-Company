pipeline { 
    agent any 

    stages { 
        stage('Checkout SCM') { 
            steps { 
                checkout scm 
            } 
        } 
        stage('Build Docker Image') { 
            steps { 
                script { 
                    docker.build('merchandise-company:latest') 
                } 
            } 
        } 
        stage('Test Application') { 
            steps { 
                // Add your test commands here 
                echo 'Testing application...' 
            } 
        } 
        stage('Push to Registry') { 
            steps { 
                script { 
                    docker.withRegistry('https://registry.example.com', 'registry-credentials') { 
                        docker.image('merchandise-company:latest').push() 
                    } 
                } 
            } 
        } 
        stage('Deploy to Kubernetes') { 
            steps { 
                script { 
                    sh 'kubectl apply -f deployment-manifest.yaml' 
                } 
            } 
        } 
    } 
}