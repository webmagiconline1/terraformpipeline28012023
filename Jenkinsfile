pipeline {
    agent any
    parameters {
        choice(name: 'environment', choices: ['dev.tfvars', 'uat.tfvars', 'prod.tfvars'], description: 'select the environment to be created')
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                script {
                    def tf_plan_args = "-var-file '${params.environment}'"
                    sh "terraform plan ${tf_plan_args}"
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    def tf_apply_args = "-var-file '${params.environment}'"
                    sh "terraform apply --auto-approve ${tf_apply_args}"
                }
            }
        }
    }
}
