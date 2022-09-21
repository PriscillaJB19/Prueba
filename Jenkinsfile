@Library('shared-library-2')_
pipeline{
    agent any 

    stages{
        stage('docker build'){
            steps{
                script{

                     def dockerLib.build = dockerTool'docker';  
        			   withDockerEnv("docker") {
        			   sh "${dockerTool("docker")}/bin/docker \
        							-DockerfilePath=Dockerfile \
                                    -DockerImage=priscillajb/prueba-${BUILD_ID} \
                                    -DockerContext=Prueba"
                }
            }
        }

    stage('docker push'){
        steps{
            script{

                 def dockerLib.push =  dockerTool'docker';  
        			   withDockerEnv("docker") {
        			   sh "${dockerTool("docker")}/bin/docker \
                                    -DockerImage=priscillajb/prueba-${BUILD_ID}"
            }
            }
        }
    }
}
