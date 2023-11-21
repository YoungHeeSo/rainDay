package db;

import java.io.PrintWriter;
import java.sql.*;

import javax.sql.DataSource;

import beans.Board;
import static db.JdbcUtil.*;

public class BoardDAO {

	Connection con;
	DataSource ds;
	private static BoardDAO boardDAO;
	
	private BoardDAO() {}
	
	public static BoardDAO getInstance() { //singleton 객체
		if(boardDAO==null) 
			boardDAO=new BoardDAO();
		return boardDAO;
	}
	
//	  private int BOARD_NUM;
//  private String BOARD_NAME;
//  private String BOARD_PASS;
//  private String BOARD_SUBJECT;
//  private String BOARD_CONTENT;
//  private String BOARD_FILE;
//  private int BOARD_RE_REF;
//  private int BOARD_RE_LEV;
//  private int BOARD_RE_SEQ ;
//  private int BOARD_READCOUNT=0;
//  private Date BOARD_DATE;
	
//	게시글 등록
	public int insertArticle(Board b, Connection con) {
		int re=0;
		PreparedStatement ps=null;
		String sql="";
		sql="select max(BOARD_NUM) from board";
		ResultSet rs = null;
		int num = 0; //초기값
		
		
		try {
			
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()) 
				num =  rs.getInt(1)+1;
			else 
				num=1;
			
			sql="insert into board(BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT,BOARD_CONTENT,BOARD_FILE,BOARD_RE_REF,BOARD_RE_LEV,BOARD_RE_SEQ,BOARD_DATE)"
					+"value(?,?,?,?,?,?,?,?,?,now())";
			
			ps=con.prepareStatement(sql);
			
			ps.setInt(1, num);
			ps.setString(2, b.getBOARD_NAME());
			ps.setString(3, b.getBOARD_PASS());
			ps.setString(4, b.getBOARD_SUBJECT());
			ps.setString(5, b.getBOARD_CONTENT());
			ps.setString(6, b.getBOARD_FILE());
			ps.setInt(7, num);
			ps.setInt(8, 0);
			ps.setInt(9, 0);
			
			re=ps.executeUpdate();
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}finally {
			
			close(rs);
			close(ps);
		}
		
		return re;
	}
	
}
