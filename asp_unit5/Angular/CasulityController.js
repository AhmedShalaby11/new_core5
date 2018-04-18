app.controller('ngControllerCasulity', function ($scope, $http) {




    //append the dropdowns dynamically according to the pariry
    $scope.appendDropdown = function (x) {
        $("#subdropdowns").empty();

        for (var i = 0; i < x; i++) {
            if (x <= 12) {
                //clear body
                //
                //append the dropdowns
                $("#subdropdowns").append("<span>Parity #" + (i + 1) + " <span><select  runat='server' ID='DropDown_ChildNumber" + (i + 1) + "' class='ParityDrop w-75 btn btn-default mt-3 mb-1' ><option>SELECT</option><option>Vaginal</option> <option>CS</option></select></br>");

            }
        }
    }



    //adding patient age from 0-90
    $scope.ageRangeObject = function () {
        var ageList = [];
        for (var i = 0; i < 91; i++) {
            ageList.push(i);

        }
        $scope.patienAgeRange = ageList;
        console.log($scope.patienAgeRange);
    }
    $scope.ageRangeObject();




    // Intervention
    //get the type of intervention on click

    $scope.Get_InterventionType = function (i) {
        $scope.showIntervention_With_Outcome = false;
        $scope.showIntervention_With_Indication = false;
        $scope.showIntervention_Without_Outcome = false;



     

        $http.get('getintervention?name=' + i + '').then(function (response) {
            if (response.status === 200) {
                $scope.Obj_InterventionType = response.data[0].Type;
                console.log($scope.Obj_InterventionType);

                var InterventionType = $scope.Obj_InterventionType;

                if (InterventionType == "OI") {

                    $scope.showIntervention_With_Indication = true;
                    $scope.showIntervention_With_Outcome = true;
                    console.log($scope.showIntervention_With_Indication);
                }
                else if (InterventionType == "O") {
                    $scope.showIntervention_With_Outcome = true;
                    console.log($scope.showIntervention_With_Outcome);
                }
                else if (InterventionType == "N") {
                    
                    $scope.showIntervention_Without_Outcome = true;
                    console.log($scope.showIntervention_Without_Outcome);
            }
            }
            else {
                console.log(response);
            }
        })
    }






    $scope.onload = function () 
    {
        $scope.showIntervention_With_Outcome = false;
        $scope.showIntervention_With_Indication = false;
        $scope.showIntervention_Without_Outcome = false;
    }
    $scope.onload();

});