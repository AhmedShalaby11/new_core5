app.controller('PerformanceController', function ($http, $scope) {

    // get the performance status 
    $scope.get_performanceDetails = function () {
        $http.get('api/PerformanceStatus').then(function (response) {
            if (response.status === 200) {
                $scope.performanceObject = response.data;
                console.log($scope.performanceObject);
            }
            else {
                console.log(response);
            }


        });

    };



        $scope.onload = function () {
            $scope.get_performanceDetails();
        }
        $scope.onload();
    });