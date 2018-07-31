package com.ph.admin.model.service;

import java.util.List;

import com.ph.admin.model.dao.AdminDAO;
import com.ph.infoBoard.model.dao.InfoBoardDAO;
import com.ph.infoBoard.model.vo.InfoBoard;
import com.ph.user.model.dao.UserDAO;
import com.ph.user.model.vo.User;

import java.sql.Connection;
import java.util.List;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

public class AdminService {

	public List<User> allMemberdList(int cPage, int numPerPage) {
		Connection conn = getConnection();
		List<User> list = new AdminDAO().allMemberList(conn, cPage, numPerPage);
		close(conn);
		return list;
	}

	public int allUserCount() {
		Connection conn = getConnection();
		int result = new AdminDAO().allUserCount(conn);
		close(conn);
		return result;
	}

	public User selectUser(String userId) {
		Connection conn = getConnection();
		User user = new AdminDAO().selectUser(conn,userId);
		
		close(conn);
		return user;
	}

	public int deleteMember(String userId) {
		Connection conn = getConnection();
		int result = new AdminDAO().deleteMember(conn,userId);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public List<User> searchMemberList(int cPage, int numPerPage, String searchType, String inputText) {
		Connection conn = getConnection();
		List<User> list = new AdminDAO().searchMemberList(conn, cPage, numPerPage,searchType,inputText);
		close(conn);
		return list;
	}

	public int countMemberList(String searchType, String inputText) {
		Connection conn = getConnection();
		int result = new AdminDAO().countMemberList(conn,searchType,inputText);
		close(conn);
		return result;
	}

	public String countUserId(int i) {
		Connection conn = getConnection();
		String userId = new AdminDAO().countUserId(conn, i);
		close(conn);
		return userId;
	}

	public int allMessageSend(String userId, String title, String content, String admin) {
		Connection conn = getConnection();
		int sendCount = new AdminDAO().allMessageSend(conn, userId, title, content, admin);
		if(sendCount>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return sendCount;
	}
	
	

}
