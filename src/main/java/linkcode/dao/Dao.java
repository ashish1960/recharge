package linkcode.dao;

import java.util.List;

import org.apache.catalina.User;

import linkcode.model.login;
import linkcode.model.plan;
import linkcode.model.recharge;
import linkcode.model.register;


public interface Dao {

	
	int createRecord(List<register> lst);
	
	boolean validlogin(login lobj);
	
	int createplan(List<plan> plat);
	
	int createrecharge(List<recharge> rlst);
	
	List<plan> getall();
	
	List<recharge> getallrecharge();
	
	int updatelogin(login lobj);
	
	List<recharge> retrieveRecord(String mobile_number);
	
	List<register> retieveAllRecords();

}
