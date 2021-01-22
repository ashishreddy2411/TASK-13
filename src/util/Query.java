package util;

public class Query {
	public static String addUser="insert into users values(?,?,?,?)";
	public static String verify="select * from users where name=? and password=?";
}
