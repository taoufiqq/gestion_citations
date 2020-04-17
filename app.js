const express = require('express');
const path = require('path');
const mysql = require('mysql');
const bodyParser = require('body-parser');


const app = express();

app.use(bodyParser.urlencoded({extended : false}));
app.use(express.static(path.join(__dirname, "style")));
app.use(express.static(path.join(__dirname,)));
app.use(express.static(path.join(__dirname,"pics")));




app.set('view engine', 'ejs');
app.set('views', 'views');


// ======== Connected NodeJS via MySQL========
const cnx = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'mysql',
    database:'citation'
});

cnx.connect(function(error){
    if(!!error) console.log(error);
    else  console.log('Connected successfuly! :)')
}); 


// ======== Display all AUTHORS===========

app.get('/', (req, res, next) => {
    const sql = "SELECT * FROM auteur";
    const query = cnx.query(sql, (err, rows) => {
        if(err)throw err;
            res.render('Auteur', {
                auteurs : rows
            });
                
    })
})

// ========== ADD NEW QUOTE==========
app.get('/add',(req, res) => {
    res.render('addPage');
});
   
app.post('/save',(req, res) => { 
    const data = {
        name: req.body.name, 
        description: req.body.description,
        img:req.body.img,
        biographique: req.body.biographique
        
    };
    const sql = "INSERT INTO auteur SET ?";
    const query = cnx.query(sql, data,(err, results) => {
      if(err) throw err;
      res.redirect('/');
    });
});

//======= EDIT QUOTE =========
app.get('/edit/:userId',(req, res) => {
    const auteurId = req.params.userId;
    let sql = `Select * from auteur where id = ${auteurId}`;
    let query = cnx.query(sql,(err, result) => {
        if(err) throw err;
        res.render('editPage', {
            auteur : result[0]
        });
    });
});

app.post('/update',(req, res) => {
  
    let userId = req.body.id

    let sql = "Update auteur SET name='"+req.body.name+"', description='"+req.body.description+"', img='"+req.body.img+"', biographique='"+req.body.biographique+"' where id ="+userId;
    let query = cnx.query(sql,(err, results) => {
      if(err) throw err;
      res.redirect('/');
    });
});

//======= DELETE QUOTE =========
app.get('/delete/:userId',(req, res) => {
    const userId = req.params.userId;
    let sql = `DELETE from auteur where id = ${userId}`;
    let query = cnx.query(sql,(err, result) => {
        if(err)
         throw err;
        res.redirect('/');
    });
});




//listing Server
app.listen(3000,()=>{
    console.log('rinning at localhost:3000')
})