package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DBClass {
	public static void close(Connection conn, Statement psmt, ResultSet rs ) {
		
		try {
			if(conn != null) {	// db의 후처리
				conn.close();
			}
			if(psmt != null) {
				psmt.close();
			}
		} catch (SQLException e) {				
			e.printStackTrace();
		}
	}
}
