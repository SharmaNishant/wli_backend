const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const bodyParser = require('body-parser');
const { json } = require('express');

// Create connection
const db = mysql.createConnection({
    host: 'localhost',
    user: '*****',
    password: '********',
    database: '*********'
});

// Connect
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('MySql Connected...');
});

const app = express();
app.use(cors())
// support parsing of application/json type post data
app.use(bodyParser.json());

// Insert post 2
app.post('/addresult', (req, res) => {
    console.log(req.body)
    let sql = 'INSERT INTO survey_results SET ?';
    let query = db.query(sql, req.body, (err, result) => {
        if (err) throw err;
        console.log(result);
        res.send('done');
    });
});

app.listen('3001', () => {
    console.log('Server started on port 3001');
});
