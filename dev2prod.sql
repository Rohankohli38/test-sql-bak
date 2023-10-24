RESTORE DATABASE ProdDatabase
FROM DISK = '/home/rishi/database/devDatabase/devDB.bak'
WITH MOVE 'DevDatabase' TO '/home/rishi/database/prodDatabase/DEVDB.bak',
     MOVE 'DevDatabase_log' TO '/home/rishi/database/prodDatabase/DEVDB_log.bak',
     REPLACE;
