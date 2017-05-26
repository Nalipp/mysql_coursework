/* SELECT * FROM users */
/* ORDER BY created_at LIMIT 5; */

/* SELECT DAYNAME(created_at) AS 'day', */
/* COUNT(*) AS 'regestration count' */ 
/* FROM users */
/* GROUP BY DAYNAME(created_at) */
/* ORDER BY COUNT(*) DESC LIMIT 1; */

/* SELECT username, image_url */
/* FROM users */
/* LEFT JOIN photos */
/* ON users.id = photos.user_id */
/* WHERE photos.id IS NULL; */

/* SELECT */ 
/*   users.id AS user_id, */
/*   users.username, */
/*   photos.id AS photos_id, */
/*   photos.image_url, */
/*   COUNT(*) AS total */
/* FROM photos */
/* INNER JOIN likes */
/*   ON photos.id = likes.photo_id */
/* INNER JOIN users */
/*   ON users.id = photos.user_id */
/* GROUP BY photos.id */
/* ORDER BY total DESC */
/* LIMIT 1; */

/* SELECT ( */
/*   (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) */ 
/* ) AS avg_post; */

/* SELECT tags.tag_name, */ 
/*        COUNT(*) AS total */ 
/* FROM photo_tags */
/* JOIN tags */
/*   ON photo_tags.tag_id = tags.id */
/* GROUP BY tags.id */
/* ORDER BY total DESC */ 
/* LIMIT 5; */

/* SELECT users.username, */ 
/*        COUNT(*) as total_likes */
/* FROM users */
/* JOIN likes */
/*   ON users.id = likes.user_id */
/* GROUP BY users.id */
/* HAVING total_likes = (SELECT COUNT(*) FROM photos); */

