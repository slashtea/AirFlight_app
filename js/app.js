
var app = angular.module('AirFlight_App', [
	'ngRoute', // ngRoute service.
	'AirportsCtrl'
	]);

app.config(['$routeProvider', function($routeProvider) {		// routeProvider is a service like the http.
	$routeProvider.
	when('/list', {
		templateUrl: 'partials/list.html',	
		controller:  'ListController'
	}).
	when('/details/:AirpotId', {
		templateUrl:  'partials/details.html',
		controller:   'DetailsController'
	}).
	otherwise({  // When someone just goes to the homepage of the website.
		redirectTo: '/list'
	});
}]);