#!groovy
pipeline {
	agent none
  stages {
    stage('Docker Build') {
    	agent any
      steps {
      	sh "docker build -t us-east1-docker.pkg.dev/${env.project}${env.portfolio}/flask-me:latest ."
      }
    }
    stage('Docker Push') {
    	agent any
      steps {
      	withCredentials([usernamePassword(credentialsId: 'artifactRepo', passwordVariable: 'artifactRepoPassword', usernameVariable: 'artifactRepoUser')]) {
        	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh "docker push us-east1-docker.pkg.dev/${env.project}${env.portfolio}/flask-me:latest"
        }
      }
    }
  }
}