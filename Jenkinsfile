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
	sh 'docker ps | grep 8083 | grep -v grep | awk \'{print \$1}\' | xargs -r docker rm -f'
	sh 'docker rmi -f vueapp'
        sh 'docker build -t vueapp .'
	sh 'docker run -d -p 8083:80 --name vuejs-beginner vueapp'
      }
    }
  }
}
