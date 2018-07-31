package com.ph.board.news.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ph.board.news.model.service.NewsBoardService;
import com.ph.board.news.model.vo.NewsBoard;

/**
 * Servlet implementation class NewsBoardViewServlet
 */
@WebServlet("/board/newsBoardView")
public class NewsBoardViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public NewsBoardViewServlet() {
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num=Integer.parseInt(request.getParameter("num"));
		NewsBoard nb=new NewsBoardService().selectNewsBoard(num);
		request.setAttribute("NewsBoard", nb);
		request.getRequestDispatcher("/views/board/board_news/newsBoardView.jsp");
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
