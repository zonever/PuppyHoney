package com.lostBoard.service;

import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.lostBoard.model.DAO.LostBoardDAO;
import com.lostBoard.model.vo.LostBoard;

public class LostBoardSelect {
	
	public List<LostBoard> selectAll() {
		Connection conn=getConnection();
		List<LostBoard> list=new LostBoardDAO().selectAll(conn);
		return list;
	}

}
