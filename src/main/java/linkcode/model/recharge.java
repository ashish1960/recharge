package linkcode.model;

import java.security.Timestamp;

public class recharge {

	
	private String mobileNumber;
    private float amount;
    private String planId;
	public recharge(String mobileNumber, float amount, String planId) {
		super();
		this.mobileNumber = mobileNumber;
		this.amount = amount;
		this.planId = planId;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getPlanId() {
		return planId;
	}
	public void setPlanId(String planId) {
		this.planId = planId;
	}
	
    
    
}
