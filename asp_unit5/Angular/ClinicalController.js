app.controller('ClinicalController', function ($scope, $http) {




    //get :  all lectures
    $scope.get_allClinicalRounds = function () {

        $http.get("api/Clinical_Rounds").then(function (response) {
            if (response.status == 200) {
                $scope.ClinicalObject = response.data;
                console.log(response);
            }
            else {
                console.log(response);
            }

        })

    }

    ////change post : on change mark this name as attended.
    //$scope.set_attendence = function (row, name) {
    //    $http({

    //        url: "api/Lectures",
    //        method: "POST",
    //        data: {
    //            "Attended_Flag": name,
    //            "Id": row
    //        }, headers: {
    //            'Content-Type': 'application/json'
    //        }
    //    });

    //}




    $scope.onload = function () {
        $scope.get_allClinicalRounds();
    }
    $scope.onload();

});