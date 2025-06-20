-- Insert new user data into users table
insert into users (username, firstName, lastName, age)
values
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 
 -- Retrieve all rows from the users table
 select * from users;
 
 select firstName, lastName from users where lastName = 'Doe';
 
 -- Update existing records
 update users set firstName = 'Jane', lastName = 'Doe' where username = 'jdoe';
 
 -- Delete specific rows
 delete from users where username = 'jdoe';
 
 -- SELECT queries with conditions, sorting, and limits
 select * from users where lastName = 'Doe' and firstName = 'John';
 
 select * from users where lastname = 'Doe' or firstname ='John';
 
 select * from users where lastName = 'Doe' and not firstName = 'John';
 
 select * from users where lastName = 'Doe' and (firstName = 'John' or firstName = 'Jane');
 
 select * from users order by age desc;
 
 select * from users order by lastname asc, firstname desc;
 
 select * from users limit 5;
 
  select * from users limit 5 offset 7;
 
 -- Aliases and Calculated Fields using select statement
 select firstName as First, lastName as Last from users;
 
 select username, age + 10 as ageIn10Years from users;