angular.module('models', [])
	.factory('accountModel', function(){
		function Account(id, name, type){
			this.id = id;
			this.name = name;
			this.type = type;
		}
		return this;
	}
);