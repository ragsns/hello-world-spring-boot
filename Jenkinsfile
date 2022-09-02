pipeline{
    agent any
    stages{
        stage('Git Clone'){
            steps{
                git 'https://github.com/hiyu12/hello-world-spring-boot.git'
            }
        }
        stage('Maven Test'){
            steps{
                sh 'mvn test'
            }
        }
        stage('Maven Build'){
            steps{
                sh 'mvn package'
            }
        }
        stage('DockerDeploy'){
            steps{
                sh 'docker build -t thetips4you/springboot:latest .'
            }
        }
        stage('DeploytoCont'){
            steps{
                sh 'docker run -d --name cont1 thetips4you/springboot:latest'
            }
        }
    }
}
