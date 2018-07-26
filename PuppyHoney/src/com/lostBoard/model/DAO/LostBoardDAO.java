package com.lostBoard.model.DAO;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.lostBoard.model.vo.LostBoard;

public class LostBoardDAO {
	/*private Properties prop=new Properties();
	
	public LostBoardDAO()
	{
		try
		{
			prop.load(new FileReader(LostBoardDAO.class.getResource("/sql/admin/admin-sql.properties").getPath()));
		}
		catch(IOException e)
		{
			e.printStackTrace();
		}
	}*/
	
	public List<LostBoard> selectAll(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		LostBoard lb=null;
		String sql="select * from lost_test";
		ArrayList<LostBoard> list=new ArrayList<LostBoard>();
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				lb=new LostBoard();
				lb.setLostBoardNum(rs.getInt("lost_board_num"));
				lb.setLostBoardTitle(rs.getString("lost_board_tile"));
				lb.setLostBoardContent(rs.getString("lost_board_content"));
				lb.setLostBoardNick(rs.getString("lost_board_nick"));
				lb.setLostBoardDate(rs.getDate("lost_board_date"));
				lb.setLostBoardHits(rs.getInt("lost_board_hits"));
				lb.setLostBoardGood(rs.getInt("lost_board_good"));
				lb.setLostBoardImageOrigin(rs.getString("lost_board_image_origin"));
				lb.setLostBoardImageRename(rs.getString("lost_board_image_rename"));
				lb.setLostBoardArea(rs.getString("lost_board_area"));
				lb.setLostBoardPhone(rs.getString("lost_board_phone"));
				lb.setLostBoardType(rs.getString("lost_board_type"));
				list.add(lb);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		System.out.println(list);
		
		return list;
	}

}