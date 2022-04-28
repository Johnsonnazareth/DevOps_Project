pipeline {
  agent any
  tools {
    maven'maven' 
  }
  stages {
    stage ('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
   stage('Nexus upload'){
        steps {
           echo 'Nexus Uploader....'
           nexusArtifactUploader artifacts: [[artifactId: 'mavenapp', classifier: '', file: 'target/mavenapp-1.0.0.9.war', type: 'war']], credentialsId: 'nexus3', groupId: 'com.myapp', nexusUrl: '15.206.211.85:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'jenkins', version: '1.0.0.9'
 
     }  
   }
    stage ('Deploy') {
      steps {
        script {
          deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://3.16.222.2:8080')], onFailure: false, war: '**/*.war' 
        }
      }
    }
  }
}
