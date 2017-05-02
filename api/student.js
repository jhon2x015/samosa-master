
var http = require('http');
var mysql = require('mysql');
var db = mysql.createPool({
  database : 'student',
     user : 'root',
  password : '',
    host :'localhost',
 });

 var CRUD = require('mysql-crud');
 var studentCRUD=CRUD(db, 'tbl_student');
 exports.findStudent = function(req, res) {

 	var id = parseInt(req.params.id);
 	console.log(id);
 	  studentCRUD.load({state_id : id}, function (err, val) {	  
 	  	res.jsonp(val);
 	  });
 	    
 }; 
 
 /******************for select all student *****************/

  exports.StudentList = function(req, res) {
 	  studentCRUD.load({}, function (err, val) {	  
 	  	res.jsonp(val);
 	  });   
 }; 

  exports.allStudent = function(req, res) {
 		 var query = "SELECT tbl_student.stud_id , tbl_student.stud_name , tbl_student.state_id , tbl_state.state_name FROM tbl_student INNER JOIN tbl_state ON tbl_student.state_id = tbl_state.state_id";
db.query(query, function(err, rows){
    res.jsonp(rows);
   });
 }; 


/******************for create new student it inster value in to data base*****************/ 
 
 exports.createNewStudent = function(req, res) {
 	console.log(req.body);
 	 var studName=req.body.stud_name;
 	 var stateID=req.body.stateID;
 	 	 
 	console.log('name '+studName);
 	console.log('id'+stateID);
  studentCRUD.create({'stud_name' :studName,'state_id' : stateID}, function (err, vals) {
  	if(parseInt(vals.affectedRows)>0){
  		var resdata={status:true,
  		      message:'Student successfully added'};
	  	res.jsonp(resdata);
	  	}else{
	  		 var resdata={status:false,
  		      message:'record not added '};
	  	      res.jsonp(resdata);
	  	     }
      });
    };
     
 /******************  End create *****************/



/******************for  delete data from  data base*****************/

exports.deleteStudent = function(req, res) {
   var student_id=parseInt(req.params.id);
   studentCRUD.destroy({'stud_id' : student_id}, function (err, vals) {
   console.log(vals.affectedRows);
  	if(parseInt(vals.affectedRows)>0){
  		var resdata={status:true,
  		      message:'student successfully deleted'};
	  	res.jsonp(resdata);
	  	}else{
	  		 var resdata={status:false,
  		      message:'record not found '};
	  	      res.jsonp(resdata);
	  	     }
       });
    };
   
 /******************  End Delete *****************/

/******************for  update data in data base********/

exports.updateStudent = function(req, res) {
	mid=req.body.stud_id;
 	studname=req.body.stud_name;
 	stateid=req.body.stateID;
 studentCRUD.update({'stud_id' : mid}, {stud_name:studname,state_id:stateid}, function (err, vals) {
  if(parseInt(vals.affectedRows)>0){
  		var resdata={status:true,
  		      message:'student successfully updated'};
	  	res.jsonp(resdata);
	  	}else{
	  		 var resdata={status:false,
  		      message:'record not updated '};
	  	      res.jsonp(resdata);
	  	     }
      });
   };
  
/******************  End Update *****************/














