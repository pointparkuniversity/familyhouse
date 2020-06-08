var request = require("request");

request({
  uri: "http://localhost:3100/api/v1/linens_request",
  //url: "https://familyhouseadmin.org/api/v1/linens_request",
  method: "POST",
  form: {
    house: "1",
    room: "2",
    guests: "3",
    towels: "4",
    washcloths: "5",
    bathmats: "6",
    bluebag: "7",
    date: "2020-05-30 00:00:00",
    twinsheets: "9",
    queensheets: "10",
    pillowcases: "8",
    isServed: "0",
    phoneID: "0",
    lastname: "null"
  }
}, function(error, response, body) {
  console.log(error);
  console.log(response.statusCode);
  //console.log(response);
});
