const express = require('express');
const mongoose = require('mongoose');
const dotenv = require('dotenv');
const bcrypt = require('bcrypt');
const session = require('express-session');
const passport = require('passport');

dotenv.config();
const PORT = process.env.PORT || 3000;
const saltrounds = process.env.saltrounds;

const app = express();

app.use(express.json());
app.use(express.urlencoded({extended:'true'}));
app.use(express.static(__dirname+'/public/'));
app.use(session({
    secret: "TOPSECRET",
    resave: false,
    saveUninitialized: true,
})
);

app.use(passport.initialize());
app.use(passport.session());

const userSchema = mongoose.Schema({
    name:String,
    email:{type:String, unique:true, required:true},
    password:String,
})

const userModel = mongoose.model('users',userSchema);

app.get('/', (req,res) => {
    res.render('index.ejs');
})

app.listen(PORT,() =>  {
    console.log(`Listening on http://localhost:${PORT}`);
});