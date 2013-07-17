app.controller("loginUserController", ['$scope', function ($scope){
  $scope.users = [
    {name:'Oscar',Password:'123456'},
    {name:'Hugo',Password:'7890'}
  ]

  $scope.showUsers = function() {

  };
}]);
