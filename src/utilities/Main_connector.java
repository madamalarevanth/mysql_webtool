package utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.websocket.Session;

public class Main_connector {
	
	Statement st;
	Connection con;
	
	ResultSet rs;
	
	public Connection getConnection(String dbname)
	{
		try {
			//loading drivers
			Class.forName("com.mysql.jdbc.Driver");
			
			/*creating a connection to the phpadmin ,banking_system folder using drivermanager
		    class by providing the folder name username and password*/
			
			con=DriverManager.getConnection("jdbc:mysql://localhost/"+dbname+"?"+"user=root&password=");
			
			if(con == null)
			{
				System.out.println(con);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	
	public void closeConnection()
	{
		try {
			//closing the statement 			
			//closing connection
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return;
	}

}
