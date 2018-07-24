package utilities;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Ddl {
	
	Statement st;
	Connection con;
	
	ResultSet rs;
	
	Main_connector mc = new Main_connector();
	
	public int dropper(String tname , String dbname) throws SQLException
	{
		con = mc.getConnection(dbname);
		
		st=con.createStatement();
		
		String query = "drop table"+" "+tname;
		int result = st.executeUpdate(query);
		
		mc.closeConnection();
		
		return result;
	}
	
	public int truncator(String tname , String dbname) throws SQLException
	{
		con = mc.getConnection(dbname);
		
		st=con.createStatement();
		
		String query = "truncate table"+" "+tname;
		int result = st.executeUpdate(query);
		
		mc.closeConnection();
		
		return result;
	}
	
	public int addcolumn(String tname , String dbname , String column_name , String datatype ,String column_properties) throws SQLException
	{
		con = mc.getConnection(dbname);
		
		st=con.createStatement();
		
		String query = "alter table "+tname+" add "+column_name+" "+datatype+" "+column_properties;
		
		System.out.println(query);
		int result = st.executeUpdate(query);
		
		mc.closeConnection();
		
		return result;
	}
	
	public int deletecolumn(String tname , String dbname , String column_name  ) throws SQLException
	{
		con = mc.getConnection(dbname);
		
		st=con.createStatement();
		
		String query = "alter table "+tname+" drop column "+column_name;
		int result = st.executeUpdate(query);
		
		mc.closeConnection();
		
		return result;
	}
	
	public int modifycolumn(String tname , String dbname , String column_name , String datatype ,String lenght, String column_properties) throws SQLException
	{
		con = mc.getConnection(dbname);
		
		st=con.createStatement();
		
		String query = "alter table "+tname+" modify "+column_name+" "+datatype+" ("+lenght+")  "+column_properties+" ;";
		
		System.out.println(" yeah");
		System.out.println(query);
		
		int result = st.executeUpdate(query);
		
		mc.closeConnection();
		
		return result;
	}
	
	public int foreignkey(String tname , String dbname , String column_name , String cons_name ,String ringc,String redt,String redc) throws SQLException
	{
		con = mc.getConnection(dbname);
		
		st=con.createStatement();
		
		String query = "ALTER TABLE "+tname+" ADD CONSTRAINT "+cons_name+" FOREIGN KEY ( "+ringc+" ) REFERENCES "+redt+" ("+redc+" ) ";
		System.out.println(query);
		int result = st.executeUpdate(query);
		
		mc.closeConnection();
		
		return result;
	}

}
