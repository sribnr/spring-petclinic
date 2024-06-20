pipeline {
    agent any
    options {
        buildDiscarder(logRotator(numToKeepStr: '50'))
        timestamps()
        skipDefaultCheckout()
    }
    tools {
        maven 'mvn_3.9.7'
        jdk 'jdk_17.0.11'
    }
    stages {
        stage('Clean Checkout') {
        steps {
            cleanWs()
            git branch: 'main', poll: false, url: 'https://github.com/sribnr/spring-petclinic.git'
        }
    }
    stage('Build') {
        steps {    
        sh 'mvn -s /var/lib/jenkins/settings.xml clean deploy -DskipTests' 
    }
    }
    stage('RunTest') {
        steps {
            sh 'mvn -s /var/lib/jenkins/settings.xml test'
        }
    }
   stage('Docker Build') {
    steps {
        script {
            withCredentials([usernamePassword(credentialsId: 'sribnr-dockerhub', passwordVariable: 'dockerpass', usernameVariable: 'dockeruser')]) {
                sh  "docker login -u $dockeruser -p $dockerpass"
                sh 'docker build -t sribnr/spring-petclinic:latest .'

        }

    }
   }
   }
   stage('Docker Push') {
    steps {
        script {
            withCredentials([usernamePassword(credentialsId: 'sribnr-dockerhub', passwordVariable: 'dockerpass', usernameVariable: 'dockeruser')]) {
                sh 'docker push sribnr/spring-petclinic:latest'
                }
     }
    }
}
post {
    always {
        sh 'docker logout'
    }
}
}