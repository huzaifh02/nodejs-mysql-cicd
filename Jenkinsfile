pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockercred')
        DOCKER_IMAGE = 'huzaifh02/nodejsapp'
        SSH_CREDENTIALS = 'nodeapp-cred'
        EC2_IP = '13.233.74.113'
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'master', credentialsId: 'gitcred', url: 'https://github.com/huzaifh02/nodejs-mysql-cicd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${DOCKER_IMAGE}:latest")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'dockercred', toolName: 'docker') {
                        sh "docker push ${DOCKER_IMAGE}:latest"
                    }
                }
            }
        }

        stage('Deploy to EC2') {
            steps {
                sshagent([SSH_CREDENTIALS]) {
                    sh """
                    ssh -o StrictHostKeyChecking=no ubuntu@${EC2_IP} << EOF
                    sudo docker pull ${DOCKER_IMAGE}:latest
                    sudo docker stop nodejsapp || true
                    sudo docker rm nodejsapp || true
                    sudo docker run -d --name nodejsapp -p 3000:3000 ${DOCKER_IMAGE}:latest
                    EOF
                    """
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
