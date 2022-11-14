pipeline {
  agent any
    
  tools {nodejs "14.21.1"}
    
  stages {
        
    stage('Prepare environment') {
      steps {
        sh 'rm yarn.lock'
	sh 'yarn install'
      }
    }  
    
            
    stage('Build') {
      steps {
        sh 'yarn run build'
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker cp jenkins:/var/jenkins_home/workspace/cicd-vuejs/dist /home/ec2-user'
        sh 'yarn run build'
      }
    }
  }
}
