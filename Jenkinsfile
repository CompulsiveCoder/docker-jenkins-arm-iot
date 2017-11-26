pipeline {
    agent any
    triggers {
        pollSCM 'H/30 * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh 'sh build.sh'
            }
        }
    }
}
