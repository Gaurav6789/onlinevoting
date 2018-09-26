package conn;
import java.sql.*;
import java.util.*;
import java.io.*;
public class MyConnection
{
	private MyConnection() {}
	private static Connection conn;
	public static Connection getConnection() throws FileNotFoundException,IOException,ClassNotFoundException,SQLException
	{
		if(conn==null)
		{
			Properties properties= new Properties();
			FileReader fr =new FileReader("C:\\Users\\agarw\\Desktop\\MyConnection.properties");
			properties.load(fr);
			System.out.println("load..");
			Class.forName(properties.getProperty("driver"));
			conn=DriverManager.getConnection(properties.getProperty("url"),properties.getProperty("user"),properties.getProperty("password"));
			System.out.println(conn);
		}
		return conn;
	}
}