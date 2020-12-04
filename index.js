const express = require('express');
var bodyParser = require("body-parser");
const common = require('./routes/common');
const dotenv = require('dotenv').config();
const app = express();

console.log(process.env.PORT);
// custome imports
const db = require('./config/database');



app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// CORS Request
var allowCrossDomain = function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*"); // allow requests from any other server
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE'); // allow these verbs
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Cache-Control");
    next();
}
app.use(allowCrossDomain);


app.use('/', common)

const port = process.env.PORT || 4000;
const server = require('http').createServer(app);

server.listen(port, function() {
    console.log(`Server is running on port ${port}`)
});