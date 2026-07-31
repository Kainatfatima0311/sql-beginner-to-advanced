/*
=====================================================
Module 1 : Database Fundamentals
Lesson 3 : BACKUP DATABASE
Database : SQLite
=====================================================
*/

/*
SQL Server Example

BACKUP DATABASE LibraryDB
TO DISK = 'D:\Backups\LibraryDB.bak';

SQLite

SQLite databases are backed up by copying
the .db file.

Example:

learning_sql.db

↓

learning_sql_backup.db
*/

/* Verify SQLite Connection */

SELECT sqlite_version();