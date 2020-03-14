pipeline {
   agent any 
  environment {
    PROJECT = 'Pankaj-superleague-devops'
    CLUSTER_NAME = 'sl-kub-Pankaj_Cluster'
    CLUSTER_ZONE = 'us-east1-d'
    CREDENTILS_ID = 'sl-kub-pankaj'
  }
     stage('Deploy Dev') {
       steps{
        echo "Deployment is in progress"
        sh ls-ltr
        sh "sed -i 's/tagversion/${env.BUILD_ID}/g' deployment.yaml" 
        step([$class: 'KubernetesEngineBuilder',
        namespace: "${env.BRANCH_NAME}", 
        projectId: env.PROJECT, 
        clusterName: env.CLUSTER, 
        zone: env.CLUSTER_ZONE, 
        manifestPattern: 'k8s/services', 
        credentialsId: env.JENKINS_CRED, 
        verifyDeployments: false])
        echo "Deployment Completed Successfully"
                          }
}
    
