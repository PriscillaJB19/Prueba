@Library('shared-library-2')_
pipeline{
    agent any 

    stages{
        stage('docker build'){
            steps{
                script{
                    dockerLib.build(DockerfilePath:"Prueba-NetCore/Dockerfile",
                    DockerImage:"priscillajb/prueba:1.0-${BUILD_ID}",
                    DockerContext:"Prueba-NetCore")
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
}
