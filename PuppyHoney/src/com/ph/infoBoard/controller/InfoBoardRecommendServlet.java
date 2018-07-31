package com.ph.infoBoard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ph.infoBoard.model.service.InfoBoardService;
import com.ph.user.model.vo.User;

/**
 * Servlet implementation class InfoBoardRecommendServlet
 */
@WebServlet("/infoBoard/boardRecommend")
public class InfoBoardRecommendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */ 
    public InfoBoardRecommendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			int boardNum = Integer.parseInt(request.getParameter("boardNum"));
			String userId = request.getParameter("userId");
			int cPage=Integer.parseInt(request.getParameter("cPage"));
			String searchType=request.getParameter("searchType");
			String inputText=request.getParameter("inputText");
			String sort=request.getParameter("sort");
			
			int result = new InfoBoardService().checkRecommend(boardNum,userId);
			
			if(result>=1) {
				request.setAttribute("msg", "�씠誘� 異붿쿇�븳 寃뚯떆臾쇱엯�땲�떎.");
				request.setAttribute("loc","/infoBoard/boardView?no="+boardNum+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort);
				request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
			}else {
				int result2 = new InfoBoardService().insertInfoBoardGood(boardNum,userId);
				int result3 = new InfoBoardService().countInfoBoardRecommend(boardNum);
				if(result3>=1) {
					request.setAttribute("msg", "異붿쿇�씠 �셿猷뚮릺�뿀�뒿�땲�떎.");
					request.setAttribute("loc","/infoBoard/boardView?no="+boardNum+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort);
					request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
				}else {
					request.setAttribute("msg", "異붿쿇�뿉 �떎�뙣�뻽�뒿�땲�떎..");
					request.setAttribute("loc","/infoBoard/boardView?no="+boardNum+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort);
					request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
				}
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
