@Library('shared-library-2')_
pipeline{
    agent any 

    stages{
        stage('docker build'){
            steps{
                script{
                    dockerLib.build(DockerfilePath:"Dockerfile",
                    DockerImage:"priscillajb/prueba-${BUILD_ID}",
                    DockerContext:"Prueba")
                }
            }
        }

    stage('docker push'){
        steps{
            script{
                dockerLib.push(DockerImage:"priscillajb/prueba-${BUILD_ID}")
            }
            }
        }
    }
}
