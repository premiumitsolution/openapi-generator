pipeline {
 agent any
 tools {
   jdk 'jdk14'
   maven 'Maven 3.8.1'
 }

 environment {
   PITS_NEXUS = credentials('3bbdfcd0-c1be-411d-b330-30af8851df5d')
  }

  stages {
    stage('Info') {
      steps {
        echo "The build number is ${BUILD_NUMBER}"
        echo "The branch is ${BRANCH_NAME}"
        sh 'printenv'
      }
    }
    stage('Build jar') {
      steps {
            sh 'mvn clean package -DskipTests=true'
      }
    }
    stage('Deploy to nexus') {
      steps {
            sh 'cd modules/openapi-generator-gradle-plugin/ && ./gradlew publish -PpitsNexusUser=$PITS_NEXUS_USR -PpitsNexusPassword=$PITS_NEXUS_PSW -PopenApiGeneratorVersion=5.2.0-PITS-1'
      }
    }
  }
}