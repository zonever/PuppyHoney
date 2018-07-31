package com.ph.infoBoard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ph.infoBoard.model.service.InfoBoardService;

/**
 * Servlet implementation class InfoBoardDeleteServlet
 */
@WebServlet("/freeBoard/boardDelete")
public class InfoBoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /** 
     * @see HttpServlet#HttpServlet()
     */
    public InfoBoardDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		int cPage=Integer.parseInt(request.getParameter("cPage"));
		String searchType=request.getParameter("searchType");
		String inputText=request.getParameter("inputText");
		String sort=request.getParameter("sort");
		
		int result = new InfoBoardService().deleteInfoBoard(boardNum);
		
		String msg="";
		String loc="/freeBoard/boardList?cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort;
		if(result>0) {
			msg="寃뚯떆臾쇱씠 �궘�젣�릺�뿀�뒿�땲�떎.";
		}else {
			msg="寃뚯떆臾� �궘�젣�뿉 �떎�뙣�뻽�뒿�땲�떎.";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
