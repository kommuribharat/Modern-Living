package Myprjoject;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Jdbc {
	public static Connection Database() throws ClassNotFoundException, SQLException {
		String DBDriver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/";
		String name="main";
		String uname="root";
		String pass="";
		Class.forName(DBDriver);
		Connection con=DriverManager.getConnection(url+name,uname,pass);
		return con;
		
	}
}
