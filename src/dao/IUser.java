package dao;

import model.User;
public interface IUser {
	public int AddUser(User user);
	public boolean Authenticate(String username,String password);
}