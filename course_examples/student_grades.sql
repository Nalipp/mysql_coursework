/* CREATE TABLE students */
/* ( */
/*   id INT AUTO_INCREMENT PRIMARY KEY, */
/*   first_name VARCHAR(100) NOT NULL */
/* ); */

/* CREATE TABLE papers */
/* ( */
/*   title VARCHAR(100), */
/*   grade INT, */
/*   student_id INT, */
/*   FOREIGN KEY (student_id) */
/*     REFERENCES students(id) */
/*     ON DELETE CASCADE */ 
/* ); */


/* INSERT INTO students (first_name) VALUES */ 
/* ('Caleb'), */ 
/* ('Samantha'), */ 
/* ('Raj'), */ 
/* ('Carlos'), */ 
/* ('Lisa'); */
 
/* INSERT INTO papers (student_id, title, grade ) VALUES */
/* (1, 'My First Book Report', 60), */
/* (1, 'My Second Book Report', 75), */
/* (2, 'Russian Lit Through The Ages', 94), */
/* (2, 'De Montaigne and The Art of The Essay', 98), */
/* (4, 'Borges and Magical Realism', 89); */

/* select all students that have matching grades */
/* SELECT first_name, title, grade */
/* FROM students */
/* INNER JOIN papers */
/* ON students.id = papers.student_id */
/* ORDER BY grade DESC; */

/* select all students with grades and NULL if they don't match*/
/* SELECT first_name, title, grade */
/* FROM students */
/* LEFT JOIN papers */
/* ON students.id = papers.student_id */
/* ORDER BY students.id; */

/* select all students regardless of matching papers */ 
/* and replace NULL title with MISSING and NULL grade with 0 */
/* SELECT first_name, */ 
/*        IFNULL(title, 'MISSING'), */
/*        IFNULL(grade, 0) */
/* FROM students */
/* LEFT JOIN papers */
/* ON students.id = papers.student_id */
/* ORDER BY students.id; */

/* print student name and grade average */
/* SELECT first_name, */ 
/*        IFNULL(AVG(grade), 0) AS average */
/* FROM students */
/* LEFT JOIN papers */
/* ON students.id = papers.student_id */
/* GROUP BY students.id */
/* ORDER BY average DESC; */

/* SELECT first_name, */ 
/*        IFNULL(AVG(grade), 0) AS average, */
/*        CASE */
/*          WHEN AVG(grade) >= 75 THEN 'PASSING' */
/*          ELSE 'FAILING' */
/*        END AS 'passing status' */
/* FROM students */
/* LEFT JOIN papers */
/* ON students.id=papers.student_id */
/* GROUP BY students.id */
/* ORDER BY average DESC; */

