pipeline {
    agent any

    stages {
        stage('Backup Database') {
            steps {
                script {
                    sh "/opt/mssql-tools18/bin/sqlcmd -S 192.168.1.2 -U sa -P arintech@123 -i backup.sql"

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
