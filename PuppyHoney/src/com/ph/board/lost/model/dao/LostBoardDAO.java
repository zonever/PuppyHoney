package com.ph.board.lost.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.ph.board.lost.model.vo.LostBoard;

public class LostBoardDAO {
	private Properties prop=new Properties();
	
	public LostBoardDAO()
	{
		try
		{
			prop.load(new FileReader(LostBoardDAO.class.getResource("/sql/lostBoard/lostboard_query.properties").getPath()));
		}
		catch(IOException e)
		{
			e.printStackTrace();
		}
	}
	public int insertBoard(Connection conn, LostBoard lb) {
		PreparedStatement pstmt=null;
		int result=0;
		String sql=prop.getProperty("insertLostBoard");;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, lb.getLostBoardTitle());
			pstmt.setString(2, lb.getLostBoardContent());
			pstmt.setString(3, lb.getLostBoardId());
			pstmt.setString(4, lb.getLostBoardArea());
			pstmt.setString(5, lb.getLostBoardPhone());
			pstmt.setString(6, lb.getLostBoardType());
			pstmt.setString(7, lb.getThumbnail());
			result=pstmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		close(pstmt);
		
		return result;
		
	}
	
	public List<LostBoard> selectAll(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		LostBoard lb=null;
		String sql=prop.getProperty("selectLostBoardAll");;
		ArrayList<LostBoard> list=new ArrayList<LostBoard>();
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				lb=new LostBoard();
				lb.setLostBoardNum(rs.getInt("lost_board_num"));
				lb.setLostBoardTitle(rs.getString("lost_board_title"));
				lb.setLostBoardContent(rs.getString("lost_board_content"));
				lb.setLostBoardId(rs.getString("lost_board_Id"));
				lb.setLostBoardDate(rs.getDate("lost_board_date"));
				lb.setLostBoardHits(rs.getInt("lost_board_hits"));
				lb.setLostBoardGood(rs.getInt("lost_board_good"));
				lb.setLostBoardArea(rs.getString("lost_board_area"));
				lb.setLostBoardPhone(rs.getString("lost_board_phone"));
				lb.setLostBoardType(rs.getString("lost_board_type"));
				lb.setThumbnail(rs.getString("lost_board_thumbnail"));
				list.add(lb);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		
		return list;
	}
	
	public LostBoard selectDetail(Connection conn, int num) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		LostBoard lb=null;
		String sql=prop.getProperty("selectLostBoardDetail");
		ArrayList<LostBoard> list=new ArrayList<LostBoard>();
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				lb=new LostBoard();
				lb.setLostBoardNum(rs.getInt("lost_board_num"));
				lb.setLostBoardTitle(rs.getString("lost_board_title"));
				lb.setLostBoardContent(rs.getString("lost_board_content"));
				lb.setLostBoardId(rs.getString("lost_board_Id"));
				lb.setLostBoardDate(rs.getDate("lost_board_date"));
				lb.setLostBoardHits(rs.getInt("lost_board_hits"));
				lb.setLostBoardGood(rs.getInt("lost_board_good"));
				lb.setLostBoardArea(rs.getString("lost_board_area"));
				lb.setLostBoardPhone(rs.getString("lost_board_phone"));
				lb.setLostBoardType(rs.getString("lost_board_type"));
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		System.out.println(lb);
		
		return lb;
	}

}
