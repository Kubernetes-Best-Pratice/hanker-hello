pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh 'echo "hellow"'
            echo 'this print message'
          }
        }

        stage('app02') {
          steps {
            echo 'this is parellse'
          }
        }

      }
    }

    stage('Test') {
      steps {
        echo 'this is deploy'
      }
    }

    stage('Deploy-dev') {
      steps {
        echo 'this is deploy dev'
      }
    }

    stage('HealthCheck') {
      steps {
        echo 'message'
      }
    }

    stage('Dev-prod') {
      steps {
        echo 'deploy prod'
      }
    }

  }
}