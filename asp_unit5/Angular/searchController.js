app.controller('ngControllerCasulity', function ($scope, $http) {

    //search: by _patientdata_dateRange

    $scope.search_patientdata_dateRange = function () {
     

        $http.get('getDateRange?from=' + $("#textbox_datefrom").val() + '&to=' + $("#textbox_dateto").val() + '').then(function (response) {
            if (response.status === 200) {
                console.log('Calling: getDateRange?from=' + $("#textbox_datefrom").val() + '&to=' + $("#textbox_dateto").val() + '');
                $scope.div_Search_Date_Range = true;
                $scope.dataRangeObject = response.data;
                console.log($scope.dataRangeObject);


            }
            else {
                console.log(response);
            }
        });
    };
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
        $scope.div_Search_Date_Range = false;
    };
    $scope.onload();

});