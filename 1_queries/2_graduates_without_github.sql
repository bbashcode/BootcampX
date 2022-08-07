SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date < NOW();

CREATE TABLE assignment(
id SERIAL PRIMARY KEY INT NOT NULL,
name varchar(255) NOT NULL,
content varchar(255),
day date,
chapter varchar(255),
duration varchar(40)
);

CREATE TABLE assignment_submissions(
id SERIAL PRIMARY KEY INT NOT NULL,
assignment_id INT REFERENCES assignment(id) ON DELETE CASCADE,
student_id INT REFERENCES students(id) ON DELETE CASCADE,

);