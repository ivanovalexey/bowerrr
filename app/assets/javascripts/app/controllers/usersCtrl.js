App.controller('usersCtrl',
['$scope', 'Users',
function ($scope, Users) {
  'use strict';

  function init() {
    Users.index({}, function(resp) {
      $scope.users = resp.users;
    });
  }

  init();

}]);
