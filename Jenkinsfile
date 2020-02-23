pipeline {
    agent {
        node { label 'DEVOPS' }
    }
    parameters {
        string(name 'new_version', description: 'deployed version')
    }
    stages {
        stage('Build') {
            steps {
                sh (script:"""
                    mvn --version
                    mvn clean package -Dmaven.test.skip=true
                    pwd
                    ls -l
                    if [[ ${new_version} != '' ]];then
                        docker build -t springboothelloworld:${new_version} .
                    else
                        docker build -t springboothelloworld:latest .
                    fi
                """)
            }
        }
    }
    post {
        always {
            echo 'Clean up the job workspace'
            cleanWs()
        }
    }
}
