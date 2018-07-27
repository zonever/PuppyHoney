package com.ph.board.place.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Properties;

import com.ph.board.place.model.vo.PlaceBoard;

public class PlaceBoardDAO {

	private Properties prop;
	public PlaceBoardDAO()
	{
		prop=new Properties();
		String file=PlaceBoardDAO.class.getResource("/sql/placeboard/placeboard-sql.properties").getPath();
		try {
			prop.load(new FileReader(file));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public int insertPlaceBoard(Connection conn, PlaceBoard plBoard) 	//로그인시 세션값 하나 받기
	{
		PreparedStatement pstmt=null;
		int result=0;
		String sql=prop.getProperty("insertPlaceBoard");
		try
		{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,plBoard.getPlBoardTitle());
			pstmt.setString(2,plBoard.getPlBoardContent());
			pstmt.setString(3,plBoard.getPlBoardId());		//세션값으로 아이디 하나 받기
			pstmt.setString(4,plBoard.getPlBoardTitle());
			pstmt.setString(5,plBoard.getPlBoardTitle());
			pstmt.setString(6,plBoard.getPlBoardTitle());
			pstmt.setString(7,plBoard.getPlBoardTitle());
			pstmt.setString(8,plBoard.getPlBoardTitle());
			pstmt.setString(9,plBoard.getPlBoardTitle());
			pstmt.setString(10,plBoard.getPlBoardTitle());
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

}
