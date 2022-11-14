pipeline {
  agent any
    
  tools {nodejs "14.21.1"}
    
  stages {
        
    stage('Prepare environment') {
      steps {
        sh 'rm yarn.lock'
	sh 'rm -rf dist'
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
        sh 'docker build -t vueapp .'
	sh 'docker run -d -p 80:8083 vueapp'
      }
    }
  }
}
