var express = require('express');
var mysql = require('mysql');
var app = express();
var bodyParser = require('body-parser'); 

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'notimportant',
  database : 'join_us'
});

app.get("/", function(req, res) {
  var q = 'SELECT COUNT(*) AS count FROM users';
  connection.query(q, function(err, results) {
    if (err) throw err;
    var count = results[0].count;
    res.render('home', {count: count});
  });
});

app.post("/register", function(req, res) {
  var user = {email: req.body.email};
  connection.query('INSERT INTO users SET ?', user, function(err, results) {
    if (err) throw err;
    res.redirect('/');
  });
});

app.get("/apis", function(req, res) {
  res.render('apis')
});

app.listen(8080, function() {
  console.log('app running on localhost://8080'); 
});
