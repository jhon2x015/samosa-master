function studentcontroller($rootScope,$scope, $location, $http, $routeParams) {
	$scope.stud= {};
	$scope.stateid= $routeParams.id;
	 	id =$scope.stateid;
      $http.get(baseURL + 'student/'+id).success(function(res) {
				$scope.response = res;
				console.log(res);
				if (res.status == 'false') {
					alert(res.message);
				} else {
					console.log(res);
					$scope.stud=res;
					
				}
			}).error(function() {
				alert("Please check your internet connection or data source..");
			});

}