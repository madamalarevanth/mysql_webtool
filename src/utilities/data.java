package utilities;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class data {

	   Connection conn;
	   Statement st;
	   
	   public String getmail(String name) throws SQLException
	   {
		   Main_connector mc1 = new Main_connector();
		      
		      conn = mc1.getConnection("dbms");
		      st = conn.createStatement();
		      ResultSet rs = st.executeQuery("select * from authentication where firstname= '"+name+"'");
		       rs.next();
		      String email=rs.getString("email");
		      mc1.closeConnection();
			return email;  
	   }
     
	   public String getcon(String name) throws SQLException
	   {
		   Main_connector mc1 = new Main_connector();
		      
		      conn = mc1.getConnection("dbms");
		      st = conn.createStatement();
		      ResultSet rs = st.executeQuery("select * from authentication where firstname= '"+name+"'");
		      rs.next();
		      String cont =rs.getString("con_no");
		      mc1.closeConnection();
			return cont;  
	   }
}
