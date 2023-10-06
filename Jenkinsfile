pipeline {
    agent any
    tools{
        maven 'Maven'
    }
    stages{
        stage('Clone Config') {
            steps{
                git branch: 'main', url: 'https://github.com/manimaran6483/envconfig.git'
            }
        }
        stage('Validate Config'){
            steps{
                bat(/ call C:\Users\901465\git\configValidate.bat /)
            }
        }
        stage('Git Clone'){
            steps{
                git branch: 'master', url: 'https://github.com/manimaran6483/hello-world-spring-boot.git'
            }
		}
		stage('Build'){
            steps{
                bat(/ mvn clean install/)
            }
        }
        stage('Archive Artifacts'){
            steps{
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true, onlyIfSuccessful: true
            }
        }
    }
}