pipeline{
    agent any
    stages{
        stage('checkout the code from github'){
            steps{
                 git url: 'https://github.com/MadhurisaiNachireddy/Banking-java-project.git/'
                 echo 'github url checkout'
            }
        }
        stage('codecompile with madhuri'){
            steps{
                echo 'starting compiling'
                sh 'mvn compile'
            }
        }
        stage('codetesting with madhuri'){
            steps{
                sh 'mvn test'
            }
        }
        stage('qa with madhuri'){
            steps{
                sh 'mvn checkstyle:checkstyle'
            }
        }
        stage('package with madhuri'){
            steps{
                sh 'mvn package'
            }
        }
        stage('run dockerfile'){
          steps{
               sh 'docker build -t myimg .'
           }
         }
        stage('port expose'){
            steps{
                sh 'docker run -dt -p 8091:8091 --name c000 myimg'
            }
        }   
    }
}
