var http = require('http');
var mysql = require('mysql');
var db = mysql.createPool({
	database : 'student',
     user : 'ftdev',
	password : '10gXWOqeaf',
    host :'localhost',
 });
 var CRUD = require('mysql-crud');
 exports.login = function(req, res) {
 	var username=req.body.username;
 	var password=req.body.password; 
 	  CRUD(db, 'tbl_housing_admin').load({username: username,password : password }, function (err, val) {	
 	  	var resdata={
 	  		status:false,
 	  		message :'err'
 	  	};
 	  	if(val.length>0){
 	  		resdata.status=true;
 	  		resdata.message='successfully login welcome to admin panel.';  		
 	  	}else{
 	  		resdata.status=false;
 	  		resdata.message='wrong username or password please enter a valid password ';
 	  	} 	  	  
 	  	res.jsonp(resdata);
 	  });
 }; 