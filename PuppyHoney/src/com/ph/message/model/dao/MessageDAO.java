package com.ph.message.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ph.message.model.vo.Message;

public class MessageDAO {
	
	public List<Message> receiverMessageList(Connection conn, String userId, int cPage, int numPerPage) {
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Message m=null;
		String sql="select * from (select rownum as rnum, a.* from (select * from message_box where message_receiver=? order by message_date desc)a) where rnum between ? and ?";
		ArrayList<Message> list=new ArrayList();
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setInt(2, (cPage-1)*numPerPage+1);
			pstmt.setInt(3, cPage*numPerPage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				m=new Message();
				m.setMessageNum(rs.getInt("message_num"));
				m.setMessageTitle(rs.getString("message_title"));
				m.setMessageContent(rs.getString("message_content"));
				m.setMessageReceiver(rs.getString("message_receiver"));
				m.setMessageWriter(rs.getString("message_writer"));
				m.setMessageDate(rs.getDate("message_date"));
				m.setMessageRead(rs.getString("message_read"));
				list.add(m);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		
		return list;
	}
	
	public int selectBoardCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select count(*) as cnt from board";
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result=rs.getInt("cnt");
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		
		return result;
	}

}
