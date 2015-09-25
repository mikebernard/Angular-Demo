var app = angular.module('ViewAccountsApp', []);

(function(){
	app.controller(
	'account.controller',
	function($scope, accountService){

		$scope.accounts = [];
		$scope.orderField = '';

		$scope.setOrderField = function(field){
			$scope.orderField = field;
		}

		// accountService.retrieveAccounts().then(function(data) {
		// 	$scope.accounts = data;
		// });

		$scope.accounts = accountService.retrieveAccounts();


		$scope.accounts.then(function () {


			debugger;
		});

		// $scope.accounts.promise.then(function(data){
		// 	debugger;
		// 	alert(data);
		// 	$scope.accounts = data;
		// });

	});
})();
