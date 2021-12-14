pipeline {
    agent any
    
    tools {
        terraform 'Terraform-Win'
    }
    
    stages {
        stage('Code Extraction') {
            steps {
                git branch: 'main', credentialsId: 'cff6456e-2e71-4647-b3fe-846013c20e46', url: 'https://github.com/kujjuarun/terraform-pipeline.git'
            }
        }
        
        stage('Terraform Version') {
            steps {
                bat 'terraform --version'
            }
        }
        
        stage('Terraform Init') {
            steps {
                bat 'terraform init -upgrade'
            }
        }
        
        stage('Terraform validate') {
            steps {
                bat 'terraform validate'
            }
        }
        
        stage('Terraform plan') {
            steps {
                set AWS_PROFILE=default
                bat 'terraform plan'
            }
        }
        
        stage('Terraform Action') {
            steps {
                bat 'terraform $action --auto-approve'
            }
        }        
        
    }
}