@Library('shared-library-2')_
pipeline{
    agent any 

    stages{
        stage('docker build'){
            steps{
                script{
                    dockerLib.build(DockerfilePath:"Dockerfile",
                    DockerContext:"Prueba")
                }
            }
        }
    }
}
