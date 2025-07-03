CREATE TABLE students
(id INT NOT NULL UNIQUE,
name VARCHAR(25) NOT NULL
);
INSERT 
INTO students 
VALUES 
(101,'Romil'),
(102,'Dhruv'),
(103,'Ravi');

CREATE TABLE course
(course_id INT PRIMARY KEY,
course_name VARCHAR(50) NOT NULL
);

INSERT 
INTO course
VALUES
(102,'English'),
(105,'Maths'),
(107,'CS');

-- INNER JOIN
SELECT *
FROM students AS s
INNER JOIN course AS c
ON s.id = c.course_id;

-- RIGHT JOIN
SELECT *
FROM students AS S
RIGHT JOIN course AS c 
ON s.id = c.course_id;

-- LEFT JOIN
SELECT *
FROM students AS S
LEFT JOIN course AS c 
ON s.id = c.course_id;

-- FULL JOIN
SELECT *
FROM students AS S
RIGHT JOIN course AS c 
ON s.id = c.course_id
UNION
SELECT *
FROM students AS S
LEFT JOIN course AS c 
ON s.id = c.course_id;

-- RIGHT JOIN BUT SHOW ONLY course TABLE DATA 
SELECT *
FROM students AS s
RIGHT JOIN course AS c
ON s.id = c.course_id
WHERE s.id IS NULL;


