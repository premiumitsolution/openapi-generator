pipeline {
 agent any
 tools {
   jdk 'jdk14'
   maven 'Maven 3.8.1'
 }

 environment {
   PITS_NEXUS = credentials('3bbdfcd0-c1be-411d-b330-30af8851df5d')
   DEVELOPMENT_VERSION = 'версия'
   PRODUCTION_VERSION = 'версия'
   QA_VERSION = 'версия'
  }

  stages {
    stage('Info') {
      steps {
//         echo "The build number is ${BUILD_NUMBER}"
//         echo "The branch is ${BRANCH_NAME}"
//         sh 'printenv'
            echo "hello"
      }
    }
    stage('Build jar') {
      steps {
            sh 'mvn clean package -DskipTests=true'
      }
    }
  }

  post {
    always {
        archiveArtifacts artifacts: 'build/libs/**/*.jar', fingerprint: true
    }
  }
}