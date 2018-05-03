app.controller('LecturesController', function ($scope, $http) {




    //get :  all lectures
    $scope.get_allLecs = function () {

        $http.get("api/Lectures").then(function (response) {
            if (response.status == 200) {
                $scope.lecsObject = response.data;
                console.log(response);
            }
            else {
                console.log(response);
            }

        })

    }

    //change post : on change mark this name as attended.
    $scope.set_attendence = function (row, name) {
        $http({

            url: "api/Lectures",
            method: "POST",
            data: {
                "Attended_Flag": name,
                "Id": row
            }, headers: {
                'Content-Type': 'application/json'
            }
        });
  
    }




    $scope.onload = function () {
        $scope.get_allLecs();
    }
    $scope.onload();

});