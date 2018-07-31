package com.ph.board.lost.service;

import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.ph.board.lost.model.dao.LostBoardDAO;
import com.ph.board.lost.model.vo.LostBoard;

public class LostBoardService {
	
	public List<LostBoard> selectAll() {
		Connection conn=getConnection();
		List<LostBoard> list=new LostBoardDAO().selectAll(conn);
		return list;
	} 
	
	public LostBoard selectDetail(String userId) {
		Connection conn=getConnection();
		LostBoard lb=new LostBoardDAO().selectDetail(conn, userId);
		return lb;
	}

}
