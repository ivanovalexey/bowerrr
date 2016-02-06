App.factory('Users',
['$resource',
function($resource) {
  'use strict';

  return $resource('/api/users/:id/:action.json',
    {
      id: '@id'
    },
    {
      index: {
        method: 'GET'
      }
    });

}]);
