public class AccountPOJO {
	public String id;
	public String name;
	public String type;

	public AccountPOJO(
		String id,
		String name,
		String type) {

		this.id = id;
		this.name = name;
		this.type = type;
	}

	public String getId(){
		return this.id;
	}

	public String getName(){
		return this.name;
	}

	public String getType(){
		return this.type;
	}
}