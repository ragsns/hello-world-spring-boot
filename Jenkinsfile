pipeline{
    agent any
    stages{
        stage('Git Clone'){
            steps{
                git 'https://github.com/hiyu12/hello-world-spring-boot.git'
            }
        }
        stage('DockerDeploy'){
            steps{
                sh 'docker build -t akash5791/springboot:latest .'
            }
        }
        stage('DeploytoCont'){
            steps{
                sh 'docker run -d --name cont1 akash5791/springboot:latest'
            }
        }
    }
}
