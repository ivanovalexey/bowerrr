App.config(['$routeProvider', function($routeProvider) {
  'use strict';

  $routeProvider.when('/', {
    templateUrl: '/angular/main/index',
    controller: 'mainCtrl'
  });

  $routeProvider.when('/users', {
    templateUrl: '/angular/users/index',
    controller: 'usersCtrl'
  });

  $routeProvider.otherwise('/');

}]);
