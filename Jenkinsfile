@Library('shared-library-2')_
pipeline{
    agent any 

    stages{
        stage('docker build'){
            steps{
                script{
                    dockerLib.build(DockerfilePath:"Dockerfile",
                    DockerImage:"priscillajb/prueba:1.0-${BUILD_ID}",
                    DockerContext:"prueba")
                }
            }
        }
    }

    stage('docker push'){
        steps{
            script{
                dockerLib.push(DockerImage:"priscillajb/prueba:1.0-${BUILD_ID}")
            }
        }
    }
}