pipeline {
    agent any

    stages {
        stage('Prod Database Backup') {
            steps {
                script {
                    sh "/opt/mssql-tools18/bin/sqlcmd -S 192.168.1.2 -U sa -P arintech@123 -C -i prodBackup.sql"

                }
            }
        }

        stage('Dev Database backup') {
            steps {
                script {
                    // Execute the SQL restore script
                   sh "/opt/mssql-tools18/bin/sqlcmd -S 192.168.1.2 -U sa -P arintech@123 -C -i devBackup.sql"
                }
            }
        }
        stage('Restore Prod Database to new TestDB') {
            steps {
                script {
                    // Execute the SQL restore script
                    sh "/opt/mssql-tools18/bin/sqlcmd -S 192.168.1.2 -U sa -P arintech@123 -C -i restore.sql"
                }
            }
        }
        stage('Restore DevDatabase to ProdDatabase') {
            steps {
                script {
                   // Execute the SQL restore script
                   sh "/opt/mssql-tools18/bin/sqlcmd -S 192.168.1.2 -U sa -P arintech@123 -C -i dev2prod.sql"
                }
            }
        }
    }
}
