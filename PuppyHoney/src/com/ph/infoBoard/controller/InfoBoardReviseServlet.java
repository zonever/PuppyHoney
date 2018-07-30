package com.ph.infoBoard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InfoBoardReviseServlet
 */
@WebServlet("/infoBoard/boardRevise")
public class InfoBoardReviseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfoBoardReviseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		String boardTitle = request.getParameter("boardTitle");
		String boardContent = request.getParameter("boardContent");
		int cPage = Integer.parseInt(request.getParameter("cPage"));
		String searchType = request.getParameter("searchType");
		String inputText = request.getParameter("inputText");
		String sort = request.getParameter("sort");
		
		
		System.out.println("서블릿이 받은 수정전제목 : " + boardTitle);
		System.out.println("서블릿이 받은 수정전내용 : " + boardContent);
		
		
		request.setAttribute("boardNum", boardNum);
		request.setAttribute("boardTitle", boardTitle);
		request.setAttribute("boardContent", boardContent);
		request.setAttribute("cPage", cPage);
		request.setAttribute("searchType", searchType);
		request.setAttribute("inputText", inputText);
		request.setAttribute("sort", sort);
		
		request.getRequestDispatcher("/views/board/board_info/infoBoardRevise.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
