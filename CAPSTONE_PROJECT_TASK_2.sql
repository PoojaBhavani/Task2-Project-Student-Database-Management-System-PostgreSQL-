/*Create the table*/
CREATE TABLE student_table (
    Student_id SERIAL PRIMARY KEY,
    Stu_name TEXT,
    Department TEXT,
    email_id TEXT,
    Phone_no NUMERIC,
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA NUMERIC,
    Grade TEXT
);

SELECT * FROM student_table;

/*Data Entry
Insert 10 sample records into the "student_table" using INSERT command.*/
INSERT INTO student_table (Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade)
VALUES
    ('Abhijeeth', 'Biotechnology', 'abhi.gmail@example.com', 9898989898, '98, patamata, Vijayawada', '1998-04-14', 'Male', 'B.Tech', 5, 'E'),
    ('Surya', 'Electronics Engineering', 'surya.@gmail.com', 9797979797, '97, Bhavanipuram, Hyderabad', '1997-07-23', 'Male', 'B.E.', 9.2, 'A'),
    ('Karishma', 'Computer Science', 'karishma@gmail.com', 9292929292, '92, Veereshalingam street, Bangalore', '1998-11-11', 'Female', 'B.Tech', 7.8, 'B'),
    ('Gupta', 'Civil Engineering', 'gupta@gmail.com', 9458456545, '94, Chennai Avenue, Chennai', '2000-01-02', 'Male', 'B.E.', 6.5, 'C'),
    ('Faima', 'Electronics and Communications Engineering', 'faima@gmail.com', 7498498444, '74, Armani Lane, West Bengal', '2001-06-05', 'Female', 'B.Tech', 8.0, 'B'),
    ('Divya', 'Computer Science', 'divya@gmail.com', 7534231621, '78, Gachibowli, Hyderabad', '1999-07-18', 'Female', 'B.E.', 7.5, 'B'),
    ('Vishwa', 'Mechanical Engineering', 'vishwa@gmail.com', 9638527411, '96, Bhavani Circle, Pune', '1999-03-01', 'Male', 'B.Tech', 7.2, 'B'),
    ('Bindu Madhavi', 'Computer Science', 'bindu@gmail.com', 7541254861, '75, Bombay Street, Mummbai', '1998-07-05', 'Female', 'B.E.', 7.5, 'B'),
    ('Ramesh Chandra Kumar', 'Biotehnology', 'Rameshchandrakumar@gmail.com', 9852144366, '52, Swarna Avenue, Hyderabad', '1997-06-12', 'Male', 'B.Tech', 9.0, 'A'),
    ('Pooja', 'Electronics and Communications', 'pooja@gmail.com', 8686868686, '25,  Coimbatore street, Coimbatore', '2001-02-05', 'Female', 'B.E.', 8.8, 'A');
SELECT * FROM student_table;

/*Select all records ordered by grade in descending order*/
SELECT * FROM student_table ORDER BY Grade DESC;

/*Select records where gender is Male*/
SELECT * FROM student_table WHERE Gender = 'Male';

UPDATE student_table
SET GPA = 4.8
WHERE Stu_name = 'Abhijeeth';

/*Select records where GPA is less than 5.0*/
SELECT * FROM student_table WHERE GPA < 5.0;

/*Write an update statement to modify the email and grade of a student with a specific ID in the
"student_table."*/
UPDATE student_table SET email_id = 'surya.surya@gmail.com', Grade = 'B' WHERE Student_id = 2;

SELECT * FROM student_table;

/*Develop a query to retrieve the names and ages of all students who have a grade of "B" from
the "student_table."*/
SELECT Stu_name, Date_of_birth FROM student_table WHERE Grade = 'B';


/*Create a query to group the "student_table" by the "Department" and "Gender" columns and
calculate the average GPA for each combination.*/
SELECT Department, Gender, AVG(GPA) AS Avg_GPA FROM student_table 
	GROUP BY Department, Gender;

/*Rename the "student_table" to "student_info" using the appropriate SQL statement.*/
ALTER TABLE student_table RENAME TO student_info;
SELECT * FROM student_info;


/*Write a query to retrieve the name of the student with the highest GPA from the
"student_info" table.*/
SELECT Stu_name FROM student_info ORDER BY GPA DESC LIMIT 1
