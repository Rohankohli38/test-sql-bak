RESTORE DATABASE ProdSQLShackDemo
FROM DISK = '/home/rishi/DBbackups/prodDB.bak'
WITH MOVE 'DevSQLShackDemo' TO '/home/rishi/DEV/DEVDB.bak',
     MOVE 'DevQLShackDemo_log' TO '/home/rishi/DEV/DEVDB_log.bak',
     REPLACE;
