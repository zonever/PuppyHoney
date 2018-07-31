package com.ph.board.lost.service;


import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.ph.board.lost.model.dao.LostBoardDAO;
import com.ph.board.lost.model.vo.LostBoard;

public class LostBoardService {
	
	public int insertBoard(LostBoard lb) {
		Connection conn=getConnection();
		int result=new LostBoardDAO().insertBoard(conn, lb);
		if(result>0) close(conn);
		else rollback(conn);
		return result;
	}
	
	public List<LostBoard> selectAll() {
		Connection conn=getConnection();
		List<LostBoard> list=new LostBoardDAO().selectAll(conn);
		return list;
	} 
	
	public LostBoard selectDetail(int num) {
		Connection conn=getConnection();
		LostBoard lb=new LostBoardDAO().selectDetail(conn, num);
		return lb;
	}

}
