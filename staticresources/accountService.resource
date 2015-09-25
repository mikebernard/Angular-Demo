(function(){

	var accountService = function($q){

		var retrieveAccounts = function(){



			var def = $q.defer();
			var accountsReceived = def.promise;

			Accounts.retrieveAccounts(
				function(data){
					def.resolve({stuff: data});
				},
				function(){
					def.fail(data);
					alert('Error');
				}
			);
			return accountsReceived;
		};

		return {
			retrieveAccounts: retrieveAccounts
		};
	};

	angular.module('ViewAccountsApp').factory('accountService', accountService);
})();