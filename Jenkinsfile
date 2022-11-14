pipeline {
  agent any
    
  tools {nodejs "node"}
    
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
