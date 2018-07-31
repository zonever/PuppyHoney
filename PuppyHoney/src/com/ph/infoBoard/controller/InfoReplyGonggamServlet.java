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
 * Servlet implementation class InfoReplyGonggamServlet
 */
@WebServlet("/infoReply/replyGonggam")
public class InfoReplyGonggamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */ 
    public InfoReplyGonggamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		
			int replyNum = Integer.parseInt(request.getParameter("replyNum"));
			String userId = request.getParameter("userId");
			int cPage=Integer.parseInt(request.getParameter("cPage"));
			String searchType=request.getParameter("searchType");
			String inputText=request.getParameter("inputText");
			String sort=request.getParameter("sort");
			
			int result = new InfoBoardService().checkGonggam(replyNum,userId);
			
			if(result>=1) {
<<<<<<< HEAD
				request.setAttribute("msg", "이미 공감한 게시물입니다.");
				request.setAttribute("loc","/freeBoard/boardView?no="+boardNum+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort);
=======
				request.setAttribute("msg", "�씠誘� 怨듦컧�븳 寃뚯떆臾쇱엯�땲�떎.");
				request.setAttribute("loc","/infoBoard/boardView?no="+boardNum+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort);
>>>>>>> 50fcb8f3119fbf0e0e3a920c29fb520dcd76665d
				request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
			}else {
				int result2 = new InfoBoardService().insertInfoReplyGood(replyNum,userId);
				int result3 = new InfoBoardService().countInfoReplyGonggam(replyNum);
				if(result3>=1) {
<<<<<<< HEAD
					request.setAttribute("msg", "공감이 완료되었습니다.");
					request.setAttribute("loc","/freeBoard/boardView?no="+boardNum+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort);
					request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
				}else {
					request.setAttribute("msg", "공감에 실패했습니다..");
					request.setAttribute("loc","/freeBoard/boardView?no="+boardNum+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort);
=======
					request.setAttribute("msg", "異붿쿇�씠 �셿猷뚮릺�뿀�뒿�땲�떎.");
					request.setAttribute("loc","/infoBoard/boardView?no="+boardNum+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort);
					request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
				}else {
					request.setAttribute("msg", "異붿쿇�뿉 �떎�뙣�뻽�뒿�땲�떎..");
					request.setAttribute("loc","/infoBoard/boardView?no="+boardNum+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort);
>>>>>>> 50fcb8f3119fbf0e0e3a920c29fb520dcd76665d
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
