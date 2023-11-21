package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.*;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.PreparableStatement;

import javax.naming.*;

public class JdbcUtil {
	
	public static Connection getConnection() {
		Connection con =null;
		try{
	        Context init = new InitialContext();
	        DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MySQLDB");
	        con = ds.getConnection();
	        con.setAutoCommit(false);
	        
	    }catch (Exception e){
	        
	        e.printStackTrace();
	    }
		return con;
	}
	
	public static void close(Connection con) {
		try {
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return;
	}
	
	public static void close(PreparedStatement ps) {
		try {
			ps.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs) {
		try {
			rs.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection con) {
		try {
			con.commit();
			System.out.println("commit ok");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con) {
		try {
			con.rollback();
			System.out.println("rollback ok");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	

}
