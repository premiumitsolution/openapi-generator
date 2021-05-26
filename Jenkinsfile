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
        configFileProvider([configFile(fileId: 'ea3e963a-6e42-4107-b3ac-c870e1a9108f', variable: 'MAVEN_SETTINGS')]){
          sh 'mvn -s $MAVEN_SETTINGS clean deploy -DskipTests=true'
        }
      }
    }
    stage('Deploy to nexus') {
      steps {
            sh 'cd modules/openapi-generator-gradle-plugin/ && ./gradlew clean publish -PpitsNexusUser=$PITS_NEXUS_USR -PpitsNexusPassword=$PITS_NEXUS_PSW'
      }
    }
  }
}