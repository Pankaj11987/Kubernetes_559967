pipeline {
   agent any 
  environment {
    PROJECT = 'pankaj-superleague-devops'
    CLUSTER_NAME = 'sl-kub-pankaj_cluster'
    CLUSTER_ZONE = 'us-east1-d'
    CREDENTILS_ID = 'sl-kub-pankaj'
               }
   stages {
        stage('Deploy to GKE') {
            steps{
                step([
                $class: 'KubernetesEngineBuilder',
                projectId: env.PROJECT_ID,
                clusterName: env.CLUSTER_NAME,
                location: env.LOCATION,
                manifestPattern: 'manifest.yaml',
                credentialsId: env.CREDENTIALS_ID,
                verifyDeployments: true])
            }
        }
    }
}
