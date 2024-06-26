*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem

Suite Setup  connect to database  pymysql  ${dbname}  ${dbuser}  ${dbpass}  ${dbhost}  ${dbport}
Suite Teardown  disconnect from database

*** Variables ***
${dbname}  sakila
${dbuser}  root
${dbpass}  sriklewy42
${dbhost}  localhost
${dbport}  3306

*** Test Cases ***
Create Person table test
    # Execute SQL String  <Query>
    ${Output}=  Execute SQL String   CREATE TABLE Person(id INTEGER, first_name VARCHAR(20), last_name VARCHAR(20))
    log to console  ${Output}
    should be equal as strings  ${Output}  None   # This command checks if the SQL query output is None or not.

Insert single record into the Person table test
    ${Output}=  Execute SQL String  INSERT INTO sakila.Person VALUES(1,"Srikar","Reddy");
    log to console   ${Output}
    should be equal as strings  ${Output}  None

Insert multiple records into the Person table test
    # Execute SQL Script  <Script Location>
    ${Output}=  Execute SQL Script  E:/Automation/Robot Framework/Project1/TestData/DBTest.sql    # This command executes a group of SQL queries/script from a location.
    log to console  ${Output}
    should be equal as strings  ${Output}  None

Get data from table
    # Query  <query>
    @{QueryResults}=  Query  SELECT id FROM sakila.Person WHERE last_name='Reddy';  # This command returns a resultant table.
    log to console  @{QueryResults}

Update a record in table
    ${Output}=  Execute SQL String  UPDATE sakila.Person SET first_name = "Srikar" WHERE id=2;
    log to console  ${Output}
    should be equal as strings  ${Output}  None

Delete all rows from the DB test
    ${Output}=  Execute SQL String  DELETE FROM Person;
    log to console   ${Output}
    should be equal as strings  ${Output}  None

Check if "Srikar" record is there in the table
    Check if exists in database  SELECT id FROM sakila.Person WHERE first_name="Srikar";

Check if "Srikar" record is not there in the table
    Check if not exists in database  SELECT id FROM sakila.Person WHERE first_name="Srikar";

Check if the "Person" table exists in the "sakila" DB
    Table must exist  Person

Verify the row count is 0
    Row count is 0  SELECT * FROM sakila.Person WHERE first_name="sdfdvvev";

Verify the row count is equal to some value
    Row count is equal to x  SELECT * FROM sakila.Person;  4

Verify the row count is greater to some value
    Row count is greater than x  SELECT * FROM sakila.Person WHERE first_name="John";  0

Verify the row count is less to some value
    Row count is less than x  SELECT * FROM sakila.Person WHERE first_name="John";  0