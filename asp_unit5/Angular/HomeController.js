app.controller('AngularController', function ($scope, $http) {
   
    //$http({

    //    url: "http://localhost:51011/api/AreaPasswords",
    //    method: "POST",
    //    data: {
    //        "node_ip": "Angulaaaaar",
    //        "area_Password": "Angulaaaaar",
    //        "inserted_by": "Angulaaaaar"
    //    }, headers: {
    //        'Content-Type': 'application/json'
    //    }
    //});

    //get all tasks
    $scope.get_allTasks = function () {
        $http.get('api/TaskInfoes').then(function (response) {

            if (response.status === 200) {
                $scope.allTasksObject = response.data;
                console.log($scope.allTasksObject);
            }
            else {
                console.log(response);
            }
        });

    }


$scope.onload = function () {
    $scope.get_allTasks();
}
$scope.onload();

});