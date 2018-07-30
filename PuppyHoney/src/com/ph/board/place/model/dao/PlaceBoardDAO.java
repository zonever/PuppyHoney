package com.ph.board.place.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
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
			pstmt.setString(4,plBoard.getPlBoardArea());
			pstmt.setString(5,plBoard.getPlBoardDogSize());
			pstmt.setString(6,plBoard.getPlBoardBusinessType());
			pstmt.setString(7,plBoard.getPlBoardStoreName());
			pstmt.setString(8,plBoard.getPlBoardTime());
			pstmt.setString(9,plBoard.getPlBoardPhone());
			pstmt.setString(10,plBoard.getPlBoardAddr());
			pstmt.setString(11,plBoard.getPlBoardImgOrigin());
			pstmt.setString(12,plBoard.getPlBoardImgRename());
			
			result=pstmt.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	}
	public List<PlaceBoard> selectPlaceBoard(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("selectPlaceBoard");
		ArrayList<PlaceBoard> pList=new ArrayList();
		PlaceBoard plBoard=null;
		try
		{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				plBoard=new PlaceBoard();
				plBoard.setPlBoardNum(rs.getInt("place_board_num"));
				plBoard.setPlBoardTitle(rs.getString("place_board_title"));
				plBoard.setPlBoardContent(rs.getString("place_board_content"));
				plBoard.setPlBoardDate(rs.getDate("place_board_date"));
				plBoard.setPlBoardHits(rs.getInt("place_board_hits"));
				plBoard.setPlBoardGood(rs.getInt("place_board_good"));
				plBoard.setPlBoardArea(rs.getString("place_board_area"));
				plBoard.setPlBoardDogSize(rs.getString("place_board_dogsize"));
				plBoard.setPlBoardBusinessType(rs.getString("place_board_business_type"));
				plBoard.setPlBoardStoreName(rs.getString("place_board_name"));
				plBoard.setPlBoardTime(rs.getString("place_board_time"));
				plBoard.setPlBoardPhone(rs.getString("place_board_phone"));
				plBoard.setPlBoardAddr(rs.getString("place_board_address"));
				plBoard.setPlBoardImgOrigin(rs.getString("place_board_image_origin"));
				plBoard.setPlBoardImgRename(rs.getString("place_board_image_rename"));
				pList.add(plBoard);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println(pList.size());
		close(rs);
		close(pstmt);
		return pList;
	}

}
