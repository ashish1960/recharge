package linkcode.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.User;

import linkcode.db.connection;
import linkcode.model.login;
import linkcode.model.plan;
import linkcode.model.recharge;
import linkcode.model.register;

public class Daoimplemanation implements Dao{

	@Override
	public int createRecord(List<register> lst) {
		register regobj = lst.get(0);
		int i = 0;
		Connection con =null;


		try {
			con=connection.myConnection();
			PreparedStatement pstate=con.prepareStatement("insert into user10 values(?,?,?,?,?)");

			pstate.setString(1, regobj.getEmail());
			pstate.setString(2, regobj.getName());
			pstate.setString(3, regobj.getPassword());
			pstate.setString(4, regobj.getLastname());
			pstate.setInt(5, regobj.getMobileno());

			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return i;


	}

	@Override
	public boolean validlogin(login lobj) {
		boolean a = false;
		Connection con = null;

		try {
			con=connection.myConnection();
			PreparedStatement pstate=con.prepareStatement("select * from user10 where email = ? and password = ?");
			pstate.setString(1, lobj.getEmail());
			pstate.setString(2, lobj.getPassword());
			ResultSet result = pstate.executeQuery();
			if(result.next()) {
				a = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return a;


	}

	@Override
	public int createplan(List<plan> plat) {
		plan pobj = plat.get(0);
		int i = 0;
		Connection con =null;
		PreparedStatement pstate =null;

		try {
			con = connection.myConnection();
			pstate = con.prepareStatement("INSERT INTO new_plan (plan_name, plan_company, plan_amount) VALUES (?, ?, ?)");

			pstate.setString(1, pobj.getPlan_name());
			pstate.setString(2, pobj.getPlan_company());
			pstate.setFloat(3, pobj.getPlan_amount());

			// Execute the update
			i = pstate.executeUpdate();
		} catch (SQLException e) {
			// Handle SQL exceptions
			e.printStackTrace();
		} finally {
			// Close resources in the finally block
			try {
				if (pstate != null) {
					pstate.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return i;


	}

	@Override
	public int createrecharge(List<recharge> rlst) {
		recharge robj = rlst.get(0);
		int i = 0;
		Connection con = null;
		PreparedStatement pstate = null;
		
		try {
			con = connection.myConnection();
			pstate = con.prepareStatement("INSERT INTO recharge (MOBILE_NUMBER, AMOUNT, PLAN_ID) VALUES (?, ?, ?)");
			
			pstate.setString(1, robj.getMobileNumber());
			pstate.setFloat(2,robj.getAmount());
			pstate.setString(3, robj.getPlanId());
			
			i = pstate.executeUpdate();
		} catch (SQLException e) {
			// Handle SQL exceptions
			e.printStackTrace();
		} finally {
			// Close resources in the finally block
			try {
				if (pstate != null) {
					pstate.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return i;
	}

	@Override
	public List<plan> getall() {
		
		
		Connection  con=connection.myConnection();;
		ResultSet result=null;
		Statement state=null;
		List<plan> plst=null;
		String str="select * from new_plan";
		try {
			state=(Statement) con.createStatement();
			result=state.executeQuery(str);
			plst=new ArrayList<plan>();
			while(result.next())
			{
				plst.add(new plan(0, result.getString(1), result.getString(2), result.getFloat(3)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return plst;
	}

	@Override
	public List<recharge> getallrecharge() {
		Connection  con=connection.myConnection();;
		ResultSet result=null;
		Statement state=null;
		List<recharge> rlst=null;
		String str="select * from recharge";
		try {
			state=(Statement) con.createStatement();
			result=state.executeQuery(str);
			rlst=new ArrayList<recharge>();
			while(result.next())
			{
				rlst.add(new recharge(result.getString(1), result.getFloat(2), result.getString(3)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return rlst;
		
		
	}

	@Override
	public int updatelogin(login lobj) {
		
		int i=0;
		Connection con = null;
		PreparedStatement pstate;
		try {
			con=connection.myConnection();
			pstate=con.prepareStatement("update user10 set password=? where email=?");
			pstate.setString(1,lobj.getPassword());
			pstate.setString(2,lobj.getEmail());
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return i;

	}

	@Override
	public List<recharge> retrieveRecord(String mobile_number) {
		
		Connection con=connection.myConnection();
		List<recharge> reglst = null;
	
		try {
			PreparedStatement pstate = con.prepareStatement("select * from recharge where mobile_number =?");
			pstate.setString(1, mobile_number);
			ResultSet result = pstate.executeQuery();
			if (result.next()) {
				reglst = new ArrayList<>();
				recharge seobj = new 	recharge(mobile_number, 0, null);
				reglst.add(seobj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return reglst;


	}

	@Override
	public List<register> retieveAllRecords() {
		Connection  con=connection.myConnection();;
		ResultSet result=null;
		Statement state=null;
		List<register> reglst=null;
		String str="select * from user10";
		try {
			state=(Statement) con.createStatement();
			result=state.executeQuery(str);
			reglst=new ArrayList<register>();
			while(result.next())
			{
				reglst.add(new register(result.getString(1), result.getString(2), result.getString(3), result.getString(4), result.getInt(5)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return reglst;

	}

	

	

	


}
