package com.ph.infoBoard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ph.user.model.vo.User;

/**
 * Servlet implementation class InfoBoardWriteServlet
 */
@WebServlet("/freeBoard/write")
public class InfoBoardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */ 
    public InfoBoardWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//�꽭�뀡媛믪씠 null (濡쒓렇�씤�씠 �븞�릺�뼱�엳�쑝硫� �븣由쇱갹諛쒖깮�썑 濡쒓렇�씤李쎌쑝濡�)
		User u=(User)request.getSession().getAttribute("userLoggedIn");
		int cPage = Integer.parseInt(request.getParameter("cPage"));
		String searchType = request.getParameter("searchType");
		String inputText = request.getParameter("inputText");
		String sort = request.getParameter("sort");
		if(u==null) {

			request.setAttribute("free", "free");
			request.setAttribute("cPage", cPage);
			request.setAttribute("searchType", searchType);
			request.setAttribute("inputText", inputText);
			request.setAttribute("sort", sort);
			request.setAttribute("msg", "로그인후 이용해 주세요.");
			
			request.getRequestDispatcher("/views/user/login.jsp").forward(request, response);

			return;
		}else {
		response.sendRedirect("/PuppyHoney/views/board/board_info/infoBoardWrite.jsp");
		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
