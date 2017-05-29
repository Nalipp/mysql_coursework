var faker = require('faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'notimportant',
  database : 'join_us'
});


// EXAMPLE making a query
// var q = 'SELECT COUNT(*) AS total FROM users';
//
// connection.query('INSERT INTO users SET ?', person, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results); 
// });


// EXAMPLE inserting one table row using SET ?
// var person = {
//   email: faker.internet.email(),
//   created_at: faker.date.past()
// };
//
// connection.query('INSERT INTO users SET ?', person, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results); 
// });

 
// EXAMPLE insert an array of data arrays (bulk insert)
var data = [];

for (var i = 0; i < 500; i++) {
  data.push([faker.internet.email(), faker.date.past()]);
}

var q = 'INSERT INTO users(email, created_at) VALUES ?'

connection.query(q, [data], function (error, results, fields) {
  if (error) throw error;
  console.log(results); 
});

connection.end();
