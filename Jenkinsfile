pipeline{
    agent any
    stages{
        stage('Maven Build'){
            steps{
                git 'https://github.com/hiyu12/hello-world-spring-boot.git'
                sh 'mvn clean package'
            }
        }
        stage('DockerDeploy'){
            steps{
                script {
                       sh 'docker build -t akash5791/springboot:latest .'
                }
            }
        }    
        stage('DeploytoCont'){
            steps{
                sh 'docker run -d --name cont1 akash5791/springboot:latest'
            }
        }
    }
}
