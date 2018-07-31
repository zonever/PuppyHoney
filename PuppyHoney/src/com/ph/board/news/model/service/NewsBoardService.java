package com.ph.board.news.model.service;

import java.sql.Connection;
import java.util.List;

import com.ph.board.news.model.dao.NewsBoardDAO;
import com.ph.board.news.model.vo.NewsBoard;
import static common.JDBCTemplate.*;
public class NewsBoardService {

	public List<NewsBoard> selectNewsBoardList()
	{
		Connection conn=getConnection();
		List<NewsBoard> newsList=new NewsBoardDAO().selectNewsBoardList(conn);
		close(conn);
		return newsList;
	}
	
	public int insertNews(NewsBoard nb)
	{
		Connection conn=getConnection();
		int result=new NewsBoardDAO().insertNews(conn, nb);
		if(result>0)commit(conn);
		else rollback(conn);
		close(conn);
		return result;
		
	}
	
	public NewsBoard selectNewsBoard(int num)
	{
		Connection conn=getConnection();
		NewsBoard nb=new NewsBoardDAO().selectNewsBoard(conn, num);
		close(conn);
		return nb;
	}
}
