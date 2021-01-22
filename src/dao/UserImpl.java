package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;
import util.DBcon;
import util.Query;

public class UserImpl implements IUser{
	PreparedStatement pst=null;
	@Override
	public int AddUser(User user) {
		try {
			pst=DBcon.getCon().prepareStatement(Query.addUser);
			pst.setString(1,user.getName());
			pst.setString(2,user.getMobile());
			pst.setString(3,user.getEmail());
			pst.setString(4,user.getPassword());
			int result=pst.executeUpdate();
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public boolean Authenticate(String username, String password) {
		try {
			pst=DBcon.getCon().prepareStatement(Query.verify);
			pst.setString(1,username);
			pst.setString(2,password);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				if(rs.getString(1).equals(username)&&rs.getString(4).equals(password))
						return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
