package com.ph.admin.model.service;

import java.util.List;

import com.ph.admin.model.dao.AdminDAO;
import com.ph.infoBoard.model.dao.InfoBoardDAO;
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

}
