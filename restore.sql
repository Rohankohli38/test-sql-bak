-- Restore the backup to a new or existing database
RESTORE DATABASE YourTargetDatabase
FROM DISK = 'C:\Backup\YourSourceDatabase.bak'
WITH MOVE 'YourSourceDatabase' TO 'C:\Data\YourTargetDatabase.mdf',
     MOVE 'YourSourceDatabase_log' TO 'C:\Data\YourTargetDatabase_log.ldf',
     REPLACE;
