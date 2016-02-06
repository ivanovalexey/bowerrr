App.filter('dateFormat',
['moment',
function(moment) {
  'use strict';

  return function(input) {
    return moment(input).format('DD.MM.YYYY');
  };

}]);
