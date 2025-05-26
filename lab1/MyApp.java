package com.dsce;
import java.util.ResourceBundle;
public class MyApp {

	public int userlogin(String uname,String upasswd)
	{
		ResourceBundle rb=ResourceBundle.getBundle("config");
		String username=rb.getString("username");
		String password=rb.getString("password");
		if(uname.equals(username) && upasswd.equals(password))
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
}
