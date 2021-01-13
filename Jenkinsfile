pipeline {
    agent any

    stages {
        stage('pull code') {
            steps {
                echo '**********拉取代码**********'
                checkout([$class: 'GitSCM', branches: [[name: '*/jenkins_demo']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'github_yufei', url: 'https://github.com/Yufei488/demo.git']]])
            }
        }
        stage('build project') {
            steps {
                echo '**********开始编译**********'
                sh 'mvn --version'
//                sh 'mvn clean package'
            }
        }
        stage('publish'){
            steps {
                echo '**********现在可以发布了**********'
            }
        }
    }
}
