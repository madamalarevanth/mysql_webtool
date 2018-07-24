package utilities;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.ResultSetMetaData;

public class Dml {
	
	Statement st;
	Connection con;
	
	ResultSet rs;
	
	Main_connector mc = new Main_connector();
	
	
	public int deletor(String dbname , String tname  ,String conditions) throws SQLException
	{ 
		System.out.println(tname+""+dbname+""+conditions);
		con = mc.getConnection(dbname);
		
		if(con == null)
		{
			System.out.println("null123");
		}
		st=con.createStatement();
		
		String query = "delete from "+tname+" where "+conditions;
		int result = st.executeUpdate(query);
		
		mc.closeConnection();
		
		return result;
	}
	
	public java.sql.ResultSetMetaData selector_front(String tname , String dbname) throws SQLException
	{
		con =mc.getConnection(dbname);
		st =con.createStatement();
		
		String query = "select * from "+tname;
		
		 rs=st.executeQuery(query);
		 
		 java.sql.ResultSetMetaData md;
	
		 md =  rs.getMetaData();
		 
		return md;
		
	}
}
