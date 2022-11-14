pipeline {
  agent any
    
  tools {nodejs "14.21.1"}
    
  stages {
        
    stage('Install') {
      steps {
        sh 'rm  yarn.lock'
	sh 'yarn install'
      }
    }  
    
            
    stage('Build') {
      steps {
        sh 'yarn run build'
      }
    }
  }
}
