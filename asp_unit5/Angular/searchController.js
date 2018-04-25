app.controller('ngControllerCasulity', function ($scope, $http) {


    $scope.search_patientdata = function (n, i) {
 
        $http.get('getPatientProfile?name='+n+'&ticketId='+i+'').then(function (response) {
            if (response.status === 200) {
                console.log('Calling: getPatientProfile?name=' + n + '&ticketId=' + i + '');
                $scope.div_Search_Patient_info = true;
                $scope.dataObject = response.data;
                console.log($scope.dataObject);


            }
            else {
                console.log(response);
            }
        });
    };


    $scope.onload = function () {
        $scope.div_Search_Patient_info = false;
    };
    $scope.onload();

});