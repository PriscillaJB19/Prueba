@Library('shared-library-2')_
pipeline{
    agent {dockerL

    stages{
        stage('docker build'){
            steps{
                script{
                    dockerLib.build(DockerfilePath:"Prueba/Dockerfile",
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
}
