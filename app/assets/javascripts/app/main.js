var App = angular.module('app', [
  'ngRoute',
  'ngResource',
  'ngSanitize',
  'angularMoment'
]).config(
['$locationProvider',
function($locationProvider) {
  $locationProvider.html5Mode(true);
}]);
