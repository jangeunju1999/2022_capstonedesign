var express = require('express');
var app = express();
const mysql = require('mysql');
const bodyParser = require('body-parser');
var db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '1q2w3e4r5t',
    database : 'capstone'
  });

db.connect();
app.use(bodyParser.json());
app.listen(3000, function(){
    console.log("start! express server on port 3000");
})

//get all user id,password
app.get('/user', function(req,res){
    db.query('SELECT * FROM user', function(err, results){
        if (err){
            console.log(err);
        }else{
        res.send(results);
        }
    });
})

//get a user id,password
app.get('/user/:id', function(req,res){
    db.query('SELECT * FROM user WHERE id= ?',[req.params.id], function(err, results){
        if (err){
            console.log(err);
        }else{
        res.send(results);
        }
    });
})

//get all user_info
app.get('/user/info', function(req,res){
    db.query('SELECT * FROM user_info', function(err, results){
        if (err){
            console.log(err);
        }else{
            res.send(results);
        }
    });
})

//get a user_info
app.get('/user/:id/info', function(req,res){
    db.query('SELECT * FROM user_info WHERE id = ?',[req.params.id], function(err, results){
        if (err){
            console.log(err);
        }else{
            res.send(results);
        }
    });
})

//create user
app.post('/user/:id', function(req, res){
    var body = req.body;
    db.query('INSERT INTO user (id, password) VALUES (?, ?)',[req.params.id, body.password], function(err,results){
        if (err){
            console.log(err);
        }else{
            res.send(results);
        }
    } )
})

//create user_info
app.post('/user/:id/info', function(req, res){
    var body = req.body;
    db.query('INSERT INTO user_info (user_id, sex, age) VALUES (?, ?, ?)',[req.params.id, body.sex, body.age], function(err,results){
        if (err){
            console.log(err);
        }else{
            res.send(results);
        }
    } )
})

//update user_info
app.put('/user/:id/info', function(req, res){
    var body = req.body;
    db.query('UPDATE user_info SET sex = ?, age = ? WHERE user_id = ?',[body.sex, body.age, req.params.id], function(err,results){
        if (err){
            console.log(err);
        }else{
            console.log('success update user_info')
        }
    })
})

//delete user
app.delete('/user/:id', function(req,res){
    db.query('DELETE FROM user_info WHERE user_id = ?;',[req.params.id],function(err,results){
        if (err){
            console.log(err);
        }else{
            console.log('Success delete data');
        }
    })
    db.query('DELETE FROM user WHERE id = ?;',[req.params.id],function(err,results){
        if (err){
            console.log(err);
        }else{
            console.log('Success delete data');
        }
    })
})

