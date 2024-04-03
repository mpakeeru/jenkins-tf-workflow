pipeline {
    agent any
   
    environment {
        TF_IN_AUTOMATION = 'true'
        
    }
    stages{
        stage("Git Pull"){
            steps{
                git 'https://github.com/mpakeeru/jenkins-tf-workflow.git' 
            }
        }

        stage('Terraform Deployment to Dev'){
               when {
                branch 'dev'
            }
            steps{
                withAWS(credentials: 'Jenkins-AWS') {
                    dir('./dev'){
                    sh 'terraform init'
                    sh 'terraform plan'
                    sh 'terraform apply --auto-approve'
                    }
                }
            }
        }
        stage('Terraform Deployment to Staging'){
               when {
                branch 'staging'
            }
            steps{
                withAWS(credentials: 'Jenkins-AWS') {
                    dir('./staging'){
                    sh 'terraform init'
                    sh 'terraform plan'
                    sh 'terraform apply --auto-approve'
                    }
                }
            }
        }
        stage('Terraform Deployment to Production'){
               when {
                branch 'production'
            }
            steps{
                withAWS(credentials: 'Jenkins-AWS') {
                    dir('./production'){
                    sh 'terraform init'
                    sh 'terraform plan'
                    sh 'terraform apply --auto-approve'
                    }
                }
            }
        }
    }
}
 
    