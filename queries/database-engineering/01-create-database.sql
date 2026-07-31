/*
=====================================================
Module 1 : Database Fundamentals
Lesson 1 : CREATE DATABASE
Database : SQLite
=====================================================
*/

/*
-----------------------------------------------------
What is CREATE DATABASE?
-----------------------------------------------------

In database systems like MySQL, PostgreSQL, and SQL Server,
the CREATE DATABASE statement is used to create a new database.

Example:

CREATE DATABASE LibraryDB;

-----------------------------------------------------
SQLite Difference
-----------------------------------------------------

SQLite does NOT support the CREATE DATABASE statement.

In SQLite, every .db file is itself a database.

To create a new database:

1. Create a new .db file.
2. Connect to it using SQLTools or DB Browser.
3. Start creating tables.

Example:

learning_sql.db

This file itself is the database.
*/

/*----------------------------------------------------
SQLite Practice
----------------------------------------------------*/

/* Check the current SQLite version */

SELECT sqlite_version();

/*
If this query executes successfully,
your SQLite database connection is working correctly.
*/