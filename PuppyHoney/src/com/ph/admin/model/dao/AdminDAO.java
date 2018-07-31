package com.ph.admin.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.ph.infoBoard.model.dao.InfoBoardDAO;
import com.ph.infoBoard.model.vo.InfoBoard;
import com.ph.user.model.vo.User;

public class AdminDAO {

private Properties prop;
	 
	public AdminDAO() {
		prop=new Properties();
		try {
			 String file=AdminDAO.class.getResource("/sql/admin/admin-sql.properties").getPath();
			 prop.load(new FileReader(file));
		 }
		 catch(IOException e)
		 {
			 e.printStackTrace();
		 }
	}
	
	public List<User> allMemberList(Connection conn, int cPage, int numPerPage) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("allMemberList");
		ArrayList<User> list=new ArrayList();
		User u=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ((cPage-1)*numPerPage+1));
			pstmt.setInt(2, cPage*numPerPage);			
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				u=new User();
				u.setUserId(rs.getString("USER_ID"));
				u.setUserPw(rs.getString("USER_PW"));
				u.setUserNick(rs.getString("USER_NICK"));
				u.setUserEmail(rs.getString("USER_EMAIL"));
				u.setUserName(rs.getString("USER_NAME"));
				u.setUserBirth(rs.getDate("USER_BIRTH"));
				u.setUserDogName(rs.getString("USER_DOG_NAME"));
				u.setUserDogBirth(rs.getDate("USER_DOG_BIRTH"));
				u.setUserImageOrigin(rs.getString("USER_IMAGE_ORIGIN"));
				u.setUserImageRename(rs.getString("USER_IMAGE_RENAME"));
				u.setUserBookmark(rs.getString("USER_BOOKMARK"));
				u.setUserJoinDate(rs.getDate("USER_JOIN_DATE"));
				u.setUserLeave(rs.getString("USER_LEAVE"));
				u.setUserEmailChecked(rs.getInt("USER_EMAIL_CHECKED"));
				u.setUserEmailHash(rs.getString("USER_EMAIL_HASH"));
				list.add(u);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		close(rs);
		close(pstmt);
		
		return list;
	}

	public int allUserCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("allUserCount");
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
