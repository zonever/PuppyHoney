package com.ph.board.place.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.ph.board.place.model.dao.PlaceBoardDAO;
import com.ph.board.place.model.vo.PlaceBoard;
public class PlaceBoardService {
	
	public int insertPlaceBoard(PlaceBoard plBoard)
	{
		Connection conn=getConnection();
		int result= new PlaceBoardDAO().insertPlaceBoard(conn,plBoard);
		if(result>0)
		{
			commit(conn);
		}else
		{
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
}