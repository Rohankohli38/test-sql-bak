-- Restore the backup to a new or existing database
RESTORE DATABASE TestSQLShackDemo
FROM DISK = '/home/rishi/DBbackups/db.bak'
WITH MOVE 'ProdSQLShackDemo' TO '/home/rishi/TestSQLShackDemo/db.bak',
     MOVE 'ProdSQLShackDemo_log' TO '/home/rishi/TestSQLShackDemo/db.bak_log.bak',
     REPLACE;
