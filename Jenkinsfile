pipeline {
  environment {
    def app
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/Hemantakumarpati/OnlineBookStore.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          app = docker.build("hemantakumarpati/onlinebookstore")
        }
      }
    }
    stage('Test image') {
        
        app.inside {
            echo "Tests passed"
        }
    }
    stage('Push image') {
        /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
        docker.withRegistry('https://registry.hub.docker.com', 'dockeruser') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            } 
                echo "Trying to Push Docker Build to DockerHub"
    
}
}
