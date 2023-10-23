pipeline {
    agent any

    stages {
        stage('Backup Database') {
            steps {
                script {
                    sh "./bash.sh"

                }
            }
        }

        stage('Restore Database') {
            steps {
                script {
                    // Execute the SQL restore script
                    sh '''
                        sqlcmd -S 192.168.1.2 -U sa -P arintech@123 -i restore.sql
                    '''
                }
            }
        }
    }
}
