package com.ph.board.place.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

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

	public List<PlaceBoard> selectPlaceBoardList() 
	{
		Connection conn=getConnection();
		List<PlaceBoard> pList=new PlaceBoardDAO().selectPlaceBoard(conn);
		close(conn);
		
		return pList;
	}

	public PlaceBoard selectOne(int plBoardNum) {
		Connection conn=getConnection();
		PlaceBoard plBoard=new PlaceBoardDAO().selectOne(conn,plBoardNum);
		close(conn);
		return plBoard;
	}

	public int updatePlaceBoard(PlaceBoard plBoard) {
		Connection conn=getConnection();
		int result=new PlaceBoardDAO().updatePlaceBoard(conn,plBoard);
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
