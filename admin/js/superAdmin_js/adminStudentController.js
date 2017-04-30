function adminstudentController($rootScope,$scope, $location, $http) {
	 $scope.adminusername=loginuser;
     $rootScope.studitems = [];
		$scope.stud={
		 stud_name :'',
		 stateID :''
	};

	$scope.selectedItem='false';
		$http.get(baseURL + 'allstudent').success(function(res) {
				$scope.response = res;
				console.log(res);
				if (res.status == 'false') {
					alert(res.message);
				} else {
					console.log(res);
					$scope.student=res;
				}
			
			}).error(function() {
				alert("Please check your internet connection or data source..");
			});
			//for getting student and their id to insert in add student
			$http.get(baseURL + 'state').success(function(res) {
				$scope.response = res;
				console.log(res);
				if (res.status == 'false') {
					alert(res.message);
				} else {
					$scope.states=res;
					$rootScope.studitems=res;
				}
			
			}).error(function() {
				alert("Please check your internet connection or data source..");
			});
			
			$scope.del=function(id){
			$http.get(baseURL + 'deleteStudent/'+id).success(function(res) {
				$scope.response = res;
				if (res.status == false) {
					alert(res.message);
				} else {
					$location.path('/Adminstudent');					
				}
			
			}).error(function() {
				alert("Please check your internet connection or data source..");
			});
				
			};
			
			$scope.AddStudent=function(){
			$scope.stud.stateID=$scope.selectedItem.state_id;
			if ($scope.stud.stud_name == '') {
			alert('Enter a student Name ');
		} else if($scope.stud.stateID == null){
		    alert('select state name ');
		} else {  
			$http.post(baseURL + 'addStudent',$scope.stud).success(function(res) {
				$scope.response = res;
				console.log(res);
				if (res.status == false) {
					alert(res.message);
				} else {
					alert(res.message);
					$location.path("/Addstudent");
				}
			}).error(function() {
				alert("Please check your internet connection or data source..");
			});
		}
		};
			
		$scope.goto=function(page){
			$location.path(page);	
		};
		$scope.edit=function(id){
			$location.path('/Editstudent/'+id);	
		};
		$scope.view=function(id){
			$location.path('/Viewstudent/'+id);	
		};

	$scope.showhide = function(id){
		if(document.getElementById(id).style.display == 'none'){
	    	document.getElementById(id).style.display = 'block';
	   	}else{
	   		document.getElementById(id).style.display = 'none';
	   	}
   	};
	
}

function admineditstudController($rootScope,$scope, $location, $http,$routeParams) {
	    $scope.adminusername=loginuser;
        $scope.selectedItem=false;
		var id=$routeParams.id;				
			 $http.get(baseURL + 'getstuddetail/'+id).success(function(res) {
				 $scope.response = res;
				 $scope.studdetail=res;
			 }).error(function() {
				 alert("Please check your internet connection or data source.. xxx");
			 });

		$scope.editstud=function(studdetail){
			studdetail.stateID=$scope.selectedItem.state_id;
			if (studdetail.stud_name == '') {
			alert('Enter a student Name ');
		} else if(studdetail.state_id == ''){
		    alert('select a state ');
		} else {	
			console.log(studdetail);
			$http.post(baseURL + 'updateStudent', studdetail).success(function(res) {
				$scope.response = res;
				console.log(res);
				if (res.status == false) {
					alert(res.message);
				} else {
					$location.path("/Adminstudent");
				}
			}).error(function() {
				alert("Please check your internet connection or data source..");
			});
		}
		};
		$scope.goto=function(page){
				$location.path(page);	
			};
  $scope.showhide = function(id){
	if(document.getElementById(id).style.display == 'none'){
    document.getElementById(id).style.display = 'block';
   }else{
   	document.getElementById(id).style.display = 'none';
   }
   };
		}