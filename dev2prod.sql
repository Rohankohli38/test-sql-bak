RESTORE DATABASE ProdSQLShackDemo
FROM DISK = '/home/rishi/DEV/DevDB.bak'
WITH MOVE 'DevSQLShackDemo' TO '/home/rishi/ProdSQLShackDemo/ProdDB.bak',
     MOVE 'DevSQLShackDemo_log' TO '/home/rishi/ProdSQLShackDemo/ProdDB_log.bak',
     REPLACE;
