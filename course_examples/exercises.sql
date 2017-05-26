/* SELECT CONCAT(title, ' - ', released_year) AS 'title' FROM books ORDER BY released_year DESC LIMIT 3; */

/* SELECT title, author_lname FROM books WHERE author_lname REGEXP ' '; */

/* SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3; */

/* SELECT title, author_lname FROM books ORDER BY 2, 1; */

/* SELECT */ 
/*   UPPER(CONCAT */
/*   ( */
/*     'My favorite Author is ', */
/*     author_fname, */
/*     ' ', */
/*     author_lname, */
/*     '!' */
/*   )) */
/*   AS yell */
/*   FROM books ORDER BY author_lname; */


/* /1* find author who has written the most pages *1/ */
  /* SELECT CONCAT(author_fname, ' ', author_lname) AS author, SUM(pages) AS 'total pages' */
  /* FROM books */
  /* GROUP BY author_fname, author_lname */
  /* ORDER BY SUM(pages) DESC; */

/* /1* calculate the average relase year across all books *1/ */
/* SELECT AVG(released_year) FROM books; */

/* calculate the average stock quantity from books in one year */
/* SELECT AVG(stock_quantity), released_year */
/* FROM books */
/* GROUP BY released_year; */

/* count the number of books released in a year and average stock quantity */
/* SELECT AVG(stock_quantity), COUNT(released_year), released_year */
/* FROM books */
/* GROUP BY released_year; */

/* print the total number of books in stock */
/* SELECT SUM(stock_quantity) AS 'total books in stock' */
/* FROM books */

/* print the average release year for each author */
/* SELECT AVG(released_year), author_fname, author_lname */
/* FROM books */
/* GROUP BY author_fname, author_lname; */

/* find the full name of the author who wrote the longest book */
/* SELECT CONCAT(author_fname, ' ', author_lname) AS 'author name', pages */
/* FROM BOOKS */
/* ORDER BY pages DESC LIMIT 1; */

/* find the full name of the author who wrote the longest book using subqueries */
/* SELECT CONCAT(author_fname, ' ', author_lname) AS 'author name', pages */
/* FROM BOOKS */
/* WHERE pages = (SELECT Max(pages) FROM books); */ 

/* list year, books count, average pages */
/* SELECT released_year AS 'year', COUNT(*) AS '# books', AVG(pages) AS 'average pages' */
/* FROM books */
/* GROUP BY released_year; */

/* create a table price is always less than 1,000,000*/
/* CREATE TABLE inventory */
/* ( */
/*   item_name VARCHAR(100), */
/*   price DECIMAL(8, 2), */
/*   quantity INT */
/* ); */

/* using case */
/* SELECT title, stock_quantity, */
/*   CASE */ 
/*     WHEN stock_quantity >= 200 THEN '*****' */
/*     WHEN stock_quantity >= 150 THEN '****' */
/*     WHEN stock_quantity >= 100 THEN '***' */
/*     WHEN stock_quantity >= 50 THEN '**' */
/*     ELSE '*' */
/*   END AS 'stock' */
/* FROM BOOKS; */

/* select all books befre 1980 */
/* SELECT * FROM books WHERE released_year < 1990; */

/* select all books title, author_lname, and type */ 
/*   if title contains 'stories' type is 'short stories' */
/*   if                'just kids' and 'heartbreaking work' type is 'memoir' */
/*   else                                                   type is 'novel' */

/* SELECT title, author_lname, */ 
/*   CASE */
/*     WHEN title LIKE '%stories%' THEN 'short stories' */
/*     WHEN SUBSTR(title,1) IN('just kids', 'A Heartbreaking Work of Staggering Genius') THEN 'memoir' */
/*     ELSE 'novel' */
/*   END AS 'TYPE' */
/*   FROM books; */

/* title author_lname coun of books concat ' books' */

/* SELECT title, author_lname, */ 
/*   CASE */
/*     WHEN COUNT(*) = 1 THEN '1 book' */
/*     ELSE CONCAT(COUNT(*), ' ', 'books') */
/*   END AS 'COUNT' */
/*   FROM books */
/*   GROUP BY author_lname, author_fname; */
  
/* example of join tables */
/* CREATE TABLE customers */
/* ( */
/*   id INT AUTO_INCREMENT PRIMARY KEY, */
/*   first_name VARCHAR(100) NOT NULL, */
/*   last_name VARCHAR(100) NOT NULL, */
/*   email VARCHAR(100) NOT NULL */
/* ); */

/* CREATE TABLE orders */
/* ( */
/*   id INT AUTO_INCREMENT PRIMARY KEY, */
/*   order_date DATE, */
/*   amount DECIMAL(8,2), */ 
/*   customer_id INT, */
/*   FOREIGN KEY(customer_id) REFERENCES customers(id) */
/* ); */

/* INSERT INTO customers (first_name, last_name, email) */ 
/* VALUES ('Boy', 'George', 'george@gmail.com'), */
/*        ('George', 'Michael', 'gm@gmail.com'), */
/*        ('David', 'Bowie', 'david@gmail.com'), */
/*        ('Blue', 'Steele', 'blue@gmail.com'), */
/*        ('Bette', 'Davis', 'bette@aol.com'); */
       
/* INSERT INTO orders (order_date, amount, customer_id) */
/* VALUES ('2016/02/10', 99.99, 1), */
/*        ('2017/11/11', 35.50, 1), */
/*        ('2014/12/12', 800.67, 2), */
/*        ('2015/01/03', 12.50, 2), */
/*        ('1999/04/11', 450.25, 5); */

/* find the orders placed by boy george */ 

/* SELECT order_data, amount, customers.first_name, customers.last_name FROM orders */
/* JOIN ON customers.id=orders.customer_id; */

/* SELECT * FROM orders */
/* JOIN customers */
/* ON customers.id = orders.customer_id; */

/* SELECT orders.customer_id, customers.id FROM orders, customers */
/* WHERE customers.id = orders.customer_id; */

/* SELECT * */ 
/* FROM customers */
/* RIGHT JOIN orders */
/* ON customers.id = orders.customer_id; */

/* SELECT * */ 
/* FROM customers */
/* INNER JOIN orders */
/* ON customers.id = orders.customer_id; */

/* SELECT first_name, */
/*        last_name, */
/*        IFNULL(SUM(amount), 0) */
/* FROM customers */
/* LEFT JOIN orders */
/* ON customers.id = orders.customer_id */
/* GROUP BY customers.id; */

