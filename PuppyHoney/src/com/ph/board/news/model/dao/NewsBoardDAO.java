package com.ph.board.news.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import static common.JDBCTemplate.*;
import com.ph.board.news.model.vo.NewsBoard;

public class NewsBoardDAO {
	
	private Properties prop;
	
	public NewsBoardDAO() 
	{
		prop=new Properties();
		String file=NewsBoardDAO.class.getResource("/sql/newsboard/newsboard-sql.properties").getPath();
		try {
			prop.load(new FileReader(file));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public List<NewsBoard> selectNewsBoardList(Connection conn)
	{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("selectNewsBoardList");
		List<NewsBoard> newsList=new ArrayList<NewsBoard>();
		NewsBoard nb=null;
		try
		{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				nb=new NewsBoard();
				nb.setNewsBoardNum(rs.getInt("news_board_num"));
				nb.setNewsBoardTitle(rs.getString("news_board_title"));
				nb.setNewsBoardContent(rs.getString("news_board_content"));
				nb.setNewsBoardDate(rs.getDate("news_board_date"));
				nb.setNewsBoardGood(rs.getInt("news_board_good"));
				nb.setNewsBoardHits(rs.getInt("news_board_hits"));
				nb.setNewsBoardReplynum(rs.getInt("news_board_replynum"));
				newsList.add(nb);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return newsList;
	}
	
	public int insertNews(Connection conn, NewsBoard nb)
	{
		PreparedStatement pstmt=null;
		int result=0;
		String sql=prop.getProperty("insertNews");
		try
		{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, nb.getNewsBoardTitle());
			pstmt.setString(2,nb.getNewsBoardContent());
			result=pstmt.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		close(pstmt);
		return result;
	}
	
	public NewsBoard selectNewsBoard(Connection conn, int num)
	{
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("selectNewsBoard");
		NewsBoard nb=null;
		try
		{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				nb=new NewsBoard();
				nb.setNewsBoardNum(rs.getInt("news_board_num"));
				nb.setNewsBoardTitle(rs.getString("news_board_title"));
				nb.setNewsBoardContent(rs.getString("news_board_content"));
				nb.setNewsBoardDate(rs.getDate("news_board_date"));
				nb.setNewsBoardGood(rs.getInt("news_board_good"));
				nb.setNewsBoardHits(rs.getInt("news_board_hits"));
				nb.setNewsBoardReplynum(rs.getInt("news_board_replynum"));
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return nb;
	}
	
	
}
