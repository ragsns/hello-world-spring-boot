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
    }
}
