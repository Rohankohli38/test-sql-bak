RESTORE DATABASE ProdSQLShackDemo
FROM DISK = '/home/rishi/DBbackups/prodDB.bak'
WITH MOVE 'ProdSQLShackDemo' TO '/home/rishi/DEV/DEVDB.bak',
     MOVE 'ProdQLShackDemo_log' TO '/home/rishi/DEV/DEVDB_log.bak',
     REPLACE;
