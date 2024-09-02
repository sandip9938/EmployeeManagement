package test;

import java.sql.*;

public class UpdateEmployeeDao {
	public int p = 0;

	public int update(EmployeeBean eb) {
		try {
			Connection con = DbConnection.geCon();
			PreparedStatement ps = con.prepareStatement("update Employee65 set bsal=?,hra=?,da=?,totsal=? where eid=?");
			
			ps.setInt(1, eb.getEbsal());
			ps.setFloat(2, eb.getEhra());
			ps.setFloat(3, eb.getEda());
			ps.setFloat(4, eb.getEtsal());
			ps.setString(5, eb.getEid());
			p = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;

	}
}
