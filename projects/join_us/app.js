var faker = require('faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'notimportant',
  database : 'join_us'
});


connection.query(q, function (error, results, fields) {
   if (error) throw error;
});

connection.end();

// var emailArr = [];
// for (var i = 0; i < 500; i++) {
//   console.log(faker.internet.email()); 
//   console.log(faker.date.past());
// }


