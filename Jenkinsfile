pipeline {
    agent any #{
        #docker {
        #    image 'maven:3-alpine' 
        #    args '-v /root/.m2:/root/.m2' 
        #}
    #}
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
