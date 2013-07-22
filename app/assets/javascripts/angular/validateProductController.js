angularSF.factory ('ProjectsValidate', [
      '$resource', function ($resource) {
        return $resource('/projects'), {} , {
          validate: {
            isArray: false,
            method: 'POST',
            params: {
                    action: 'validate'   
            }
          } 
        }
      }
    ]);

angularSF.module('ProjectsValidate', ['$scope',ProjectsValidate, function ($scope,ProjectsValidate){
    
  $scope.validates = function(){
    ProjectsValidate.validate 
  }
  }]);
