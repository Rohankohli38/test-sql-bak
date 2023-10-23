#!/bin/bash

# MSSQL server credentials
DB_HOST="your_mssql_host"
DB_USER="your_mssql_username"
DB_PASS="your_mssql_password"
DB_NAME="your_mssql_database"

# Data to be inserted
ID="1"
NAME="John Doe"
EMAIL="john@example.com"
PHONE="123-456-7890"

# Construct the SQL query
SQL_QUERY="INSERT INTO Customers (ID, Name, Email, Phone) VALUES ($ID, '$NAME', '$EMAIL', '$PHONE');"
# Modify the query based on your table structure and data

# Execute the query using the sqlcmd utility
sqlcmd -S $DB_HOST -U $DB_USER -P $DB_PASS -d $DB_NAME -C -I -b -Q "$SQL_QUERY"

# Check for errors
if [ $? -eq 0 ]; then
  echo "Data insertion successful."
else
  echo "Error inserting data: $(sqlcmd -S $DB_HOST -U $DB_USER -P $DB_PASS -d $DB_NAME -Q "$SQL_QUERY" 2>&1)"
fi
