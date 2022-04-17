#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.8.5'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t drexxcbba/petclinic:latest .'
      }
    }
    stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push drexxcbba/petclinic:latest'
        }
      }
    }
    stage('Run on dev server'){
      def remote = [:]
      remote.name = 'run'
      remote.host = '192.168.0.22'
      remote.user = 'juan'
      remote.password = 'juan1999'
      remote.allowAnyHosts = true
      steps {
        sshCommand remote: remote, command: "echo juan1999 | sudo -S docker run -d drexxcbba/petclinic"
      }
    }
  }
} 
