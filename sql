
1. Create Database:
   ```sql
   CREATE DATABASE de_project;
   ```
   - Creates a new database named `de_project`.

2. Use Database:
   ```sql
   USE de_project;
   ```
   - Selects the `de_project` database for further operations.

3. Create Table:
   ```sql
   CREATE TABLE test (sno INT, name VARCHAR(100));
   ```
   - Creates a table `test` with two columns: `sno` (integer) and `name` (string).

4. Insert Data:
   ```sql
   INSERT INTO test (sno, name) VALUES (2, 'nandini');
   ```
   - Inserts a record into the `test` table with `sno` as 2 and `name` as 'nandini'.

5. Select Data:
   ```sql
   SELECT * FROM test;
   ```
   - Retrieves all records from the `test` table.

6. Update Data:
   ```sql
   UPDATE test SET name = 'sbgowtham', sno = 3 WHERE sno = 1;
   ```
   - Updates the `name` to 'sbgowtham' and `sno` to 3 where `sno` is 1 in the `test` table.

7. Delete Data:
   ```sql
   DELETE FROM test WHERE sno = 3;
   ```
   - Deletes the record where `sno` equals 3 from the `test` table.

8. Truncate Table:
   ```sql
   TRUNCATE TABLE test;
   ```
   - Removes all data from the `test` table, but keeps the table structure intact.

Here is the explanation for the `DROP TABLE` command:

9. Drop Table:
   ```sql
   DROP TABLE test;
   ```
   - Deletes the entire `test` table, including its structure and data, from the database.


