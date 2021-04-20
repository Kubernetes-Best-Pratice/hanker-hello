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

        stage('parell') {
          steps {
            echo 'this is parellse'
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'this is deploy'
      }
    }

    stage('HealthCheck') {
      steps {
        echo 'this is health check'
      }
    }

  }
}