properties([pipelineTriggers([githubPush()])])

pipeline {
    environment {
        // name of the image without tag
        dockerRepo = "shclub/edu1"
        dockerCredentials = 'docker_ci'
        dockerImageVersioned = ""
        dockerImageLatest = ""
    }

    agent any

    stages {
        /* checkout repo */
        stage('Checkout SCM') {
            checkout scm
        }
        
        stage("Building docker image"){
            steps{
                script{
                    dockerImageVersioned = docker.build dockerRepo //+ ":$BUILD_NUMBER"
                    dockerImageLatest = docker.build dockerRepo + ":latest"
                }
            }
        }
        stage("Pushing image to registry"){
            steps{
                script{
                    // if you want to use custom registry, use the first argument, which is blank in this case
                    docker.withRegistry( '', dockerCredentials){
                        dockerImageVersioned.push()
                        dockerImageLatest.push()
                    }
                }
            }
        }
        stage('Cleaning up') {
            steps {
                sh "docker rmi $dockerRepo"//:$BUILD_NUMBER"
            }
        }
    }

    /* Cleanup workspace */
    post {
       always {
           deleteDir()
       }
   }
}
