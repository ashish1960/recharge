package linkcode.model;

public class plan {

	
	private int plan_id;
	private String plan_name;
	private String plan_company;
	private float plan_amount;
	public plan(int plan_id, String plan_name, String plan_company, float plan_amount) {
		super();
		this.plan_id = plan_id;
		this.plan_name = plan_name;
		this.plan_company = plan_company;
		this.plan_amount = plan_amount;
	}
	public int getPlan_id() {
		return plan_id;
	}
	public void setPlan_id(int plan_id) {
		this.plan_id = plan_id;
	}
	public String getPlan_name() {
		return plan_name;
	}
	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
	}
	public String getPlan_company() {
		return plan_company;
	}
	public void setPlan_company(String plan_company) {
		this.plan_company = plan_company;
	}
	public float getPlan_amount() {
		return plan_amount;
	}
	public void setPlan_amount(float plan_amount) {
		this.plan_amount = plan_amount;
	}
	
	
	
}
