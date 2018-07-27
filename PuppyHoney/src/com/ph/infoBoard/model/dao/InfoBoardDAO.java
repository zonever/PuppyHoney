package com.ph.infoBoard.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.ph.infoBoard.model.vo.InfoBoard;
import static common.JDBCTemplate.close;

public class InfoBoardDAO {
	private Properties prop;
	
	public InfoBoardDAO() {
		prop=new Properties();
		try {
			 String file=InfoBoardDAO.class.getResource("/sql/infoBoard/infoBoard-sql.properties").getPath();
			 prop.load(new FileReader(file));
		 }
		 catch(IOException e)
		 {
			 e.printStackTrace();
		 }
	}
	public int insertInfoBoard(InfoBoard ib, Connection conn) {
		PreparedStatement pstmt=null;
		int result=0;
		String sql=prop.getProperty("insertInfoBoard");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, ib.getBoardTitle());
			pstmt.setString(2, ib.getBoardContent());
			pstmt.setString(3, ib.getBoardId());
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		close(pstmt);
		
		return result;
	}
	
	public List<InfoBoard> selectInfoBoardList(Connection conn, int cPage, int numPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("selectInfoBoardList");
		ArrayList<InfoBoard> list=new ArrayList();
		InfoBoard ib=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, (cPage-1)*numPerPage+1);
			pstmt.setInt(2, cPage*numPerPage);			
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				ib=new InfoBoard();
				ib.setBoardNumber(rs.getInt("INFO_BOARD_NUM"));
				ib.setBoardTitle(rs.getString("INFO_BOARD_TITLE"));
				ib.setBoardContent(rs.getString("INFO_BOARD_CONTENT"));
				ib.setBoardId(rs.getString("USER_NICK"));
				ib.setBoardDate(rs.getString("INFO_BOARD_DATE2"));
				ib.setBoardHit(rs.getInt("INFO_BOARD_HITS"));
				ib.setBoardgood(rs.getInt("INFO_BOARD_GOOD"));
				list.add(ib);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		close(rs);
		close(pstmt);
		
		return list;
		
	}
	public int selectInfoBoardCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("selectInfoBoardCount");
		int result=0;
		try
		{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				result=rs.getInt("cnt");
			}
			
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		close(rs);
		close(pstmt);
		
		return result;
	}

}
