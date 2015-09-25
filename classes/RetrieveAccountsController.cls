public with sharing class RetrieveAccountsController {

	public String accountList {get; set;}

	public RetrieveAccountsController(ApexPages.StandardController stdController){}
	public RetrieveAccountsController(){}

	@RemoteAction
	public static List<AccountPOJO> retrieveAccounts() {
		List<AccountPOJO> accountWrappers = new List<AccountPOJO>();

		List<Account> acctList = [
			SELECT
				Id,
				Name,
				Type
			FROM
				Account
		];

		for(Account acct : acctList) {
			AccountPOJO wrapper = new AccountPojo(
				acct.Id,
				acct.Name,
				acct.Type
			);
			accountWrappers.add(wrapper);
		}

		return accountWrappers;
	}
}