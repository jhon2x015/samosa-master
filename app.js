var express = require('express'), path = require('path');
var app = express();

//employees = require('./api/employee');
product = require('./api/product');
vendor = require('./api/vendor');
state = require('./api/state');
todo = require('./api/todo');
post = require('./api/post');
postcategory = require('./api/postCategory');
getdetail = require('./api/getdetail');
municipality=require('./api/municipality');
student=require('./api/student');
housingAssociation=require('./api/housingAssociation');
login=require('./api/login');
adminlogin=require('./api/adminLogin');
newsFeed=require('./api/newsFeed');
contact=require('./api/contactdetail');
submitInput=require('./api/submitinput');


// start housing admin
housingadminlogin=require('./api/H_adminlogin.js');
services=require('./api/services.js');
//end housing admin
app.use(express.bodyParser());
//app.use(express.static(path.join(__dirname, 'public')));
app.use('/admin', express.static(__dirname + '/admin'));
app.use('/mobile', express.static(__dirname + '/mobile/www'));
app.use('/housingadmin', express.static(__dirname + '/housingadmin'));
app.use('/docs', express.static(__dirname + '/apidocs'));


app.get('/api/getstuddetail/:id', getdetail.studentdetail);
app.get('/api/student/:id', student.findStudent);
app.get('/api/allstudent', student.allStudent);
app.post('/api/addStudent', student.createNewStudent);
app.get('/api/deleteStudent/:id', student.deleteStudent);
app.post('/api/updateStudent', student.updateStudent);



app.get('/api/state', state.findAllstate);
app.post('/api/addState', state.createNewState);
app.get('/api/deleteState/:id', state.deleteState);
app.post('/api/updateState', state.updateState);
app.get('/api/getdetail/:id', getdetail.statedetail);

app.get('/api/getmundetail/:id', getdetail.municipalitydetail);
app.get('/api/municipality/:id', municipality.findMunicipality);
app.get('/api/allmunicipality', municipality.allMunicipality);
app.post('/api/addMunicipality', municipality.createNewMunicipality);
app.get('/api/deleteMunicipality/:id', municipality.deleteMunicipality);
app.post('/api/updateMunicipality', municipality.updateMunicipality);


app.get('/api/housingAssociation/:id', housingAssociation.findHousinnAss);

app.get('/api/abc', housingAssociation.abc);
app.get('/api/allHousingAss', housingAssociation.allHousingAss);
app.get('/api/addHousingAss', housingAssociation.createNewHousingAss);
app.get('/api/deleteHousingAss/:id', housingAssociation.deleteHousingAss);
app.get('/api/updateHousingAss/:id', housingAssociation.updateHousingAss);
app.post('/api/login', login.login);
app.get('/api/newsFeed', newsFeed.newsFeed);
app.get('/api/newsdetail/:id', newsFeed.newsDetail);
app.get('/api/addNews', newsFeed.Addnews);
app.get('/api/deleteNews/:id', newsFeed.deletenewsfeed);
app.get('/api/updateNews/:id', newsFeed.updatenewsfeed);
app.get('/api/contact', contact.contact);
app.get('/api/contactdetail/:id', contact.contactdetail);
app.get('/api/addContact', contact.AddContact);
app.get('/api/deleteContact/:id', contact.deleteContact);
app.get('/api/UpdateContact/:id', contact.updateContact);
app.get('/api/submitInput', submitInput.submitInput);
app.post('/api/adminLogin', adminlogin.login);

// api link for housing admin panel
app.post('/api/HousingAdminLogin', housingadminlogin.login);
app.post('/api/services', services.findAllervices);

//todo actions
app.get('/api/todolist', todo.findAlltodo);
app.post('/api/addTodo', todo.createNewTodo);
app.get('/api/deleteTodo/:id', todo.deleteTodo);
app.post('/api/updateTodo', todo.updateTodo);
//app.post('/api/updateTodo', state.updateState);
app.get('/api/tododetail/:id', todo.tododetail);
// todo action end

// Blog post action
app.get('/api/postdatalist', post.findAllPost);
app.get('/api/post', post.findAllPost);
app.post('/api/addPost', post.createNewPost);
app.get('/api/deletePost/:id', post.deletePost);
app.post('/api/updatePost', post.updatePost);
app.get('/api/postdetail/:id', post.postdetail);
// Blog post action end

// Post Category for Blog //
app.get('/api/postcategory', postcategory.findAllPostCategory);
app.post('/api/addPostCategory', postcategory.createNewPostCategory);
app.get('/api/deletePostCategory/:id', postcategory.deletePostCategory);
app.post('/api/updatePostCategory', postcategory.updatePostCategory);
// Post Category for Blog end //

app.listen(5000);
console.log('Listening on port 5000...'); 
