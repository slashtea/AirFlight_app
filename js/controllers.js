
var AirportsCtrl = angular.module("AirportsCtrl", []);
	// Getting airports object from JSon file.
	AirportsCtrl.controller("ListController", ['$scope', '$http', function($scope, $http){
		$http.get('js/Airports.json').success(function(data) {
				$scope.airPorts = data;	
		});

		$scope.currentAirport = null;
		$scope.setAirport = function(name) {
			currentAirport = code;
		}
	}]);
	
	AirportsCtrl.controller("DetailsController", ['$scope', '$http', '$routeParams',
	 function($scope, $http, $routeParams){
			$http.get('js/Airports.json').success(function(data) {
			$scope.airPorts = data;
			$scope.whichAirport = $routeParams.AirpotId;	
		});
	}]);
