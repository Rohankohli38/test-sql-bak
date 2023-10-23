pipeline {
    agent any

    stages {
        stage('Install SQl CMD') {
            steps {
                script {
                    // Execute the SQL backup script
                    sh '''
                        curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
                        curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
                        sudo apt-get update
                        sudo apt-get install mssql-tools18 unixodbc-dev
                        echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bash_profile
                        echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
                        source ~/.bashrc
                    '''
                }
            }
        }
        stage('Backup Database') {
            steps {
                script {
                    // Execute the SQL backup script
                    sh '''
                        sqlcmd -S 192.168.1.2 -U sa -P arintech@123 -i backup.sql
                    '''
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
