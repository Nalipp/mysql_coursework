var faker = require('faker');

var emailArr = [];
for (var i = 0; i < 500; i++) {
  console.log(faker.internet.email()); 
  console.log(faker.date.past());
}


