package control;

import java.sql.*;

public class connection {
	public Connection conn=null;
	public connection() throws SQLException {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
		            + "username=sa;password=123;");
		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}
	}
	
}
