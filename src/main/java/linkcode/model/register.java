package linkcode.model;

public class register {

	
	
	private String  email;
	private String name;
	private String lastname;
	private String password;
    private int mobileno;
	public register(String email, String name, String lastname, String password, int mobileno) {
		super();
		this.email = email;
		this.name = name;
		this.lastname = lastname;
		this.password = password;
		this.mobileno = mobileno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getMobileno() {
		return mobileno;
	}
	public void setMobileno(int mobileno) {
		this.mobileno = mobileno;
	}
	
    
}
