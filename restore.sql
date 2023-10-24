-- Restore the backup to a new or existing database
RESTORE DATABASE TestDatabase
FROM DISK = '/home/rishi/database/prodDatabase/prodDB.bak'
WITH MOVE 'ProdDatabase' TO '/home/rishi/database/testDatabase/testDB.bak',
     MOVE 'ProdDatabase_log' TO '/home/rishi/database/testDatabase/testDB_log.bak',
     REPLACE;
