pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh (script:"""
		    mvn --version
                    mvn clean package -Dmaven.test.skip=true
                    pwd
                    ls -l
                    docker build -t springboothelloworld:0.1 .
	        """)
            }
        }
    }
}
