package com.ph.message.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ph.message.model.service.MessageService;
import com.ph.message.model.vo.Message;

/**
 * Servlet implementation class UserMessageServlet
 */
@WebServlet("/message")
public class UserMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserMessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		
		
		
		int numPerPage=5;
		int cPage;
		try {
			cPage=Integer.parseInt(request.getParameter("cPage"));
		}
		catch(NumberFormatException e) {
			cPage=1;
		}
		
		List<Message> list=new MessageService().receiverMessageList(userId, cPage, numPerPage);
		
		int totalContent=new MessageService().selectMessageCount();
		
		int totalPage=(int)Math.ceil((double)totalContent/numPerPage);
		int barSize=5;
		String pageBar="";
		int pageNo=((cPage-1)/barSize)*barSize+1;
		int pageEnd=pageNo+barSize-1;
		
		
		if(pageNo==1) {
			pageBar+="<span> [이전] <span>";
		}
		else {
			pageBar+="<a href='"+request.getContextPath()+"/board/boardList?cPage="+(pageNo-1)+"'> [이전] </a";
		}
		
		
		while(!(pageNo>pageEnd||pageNo>totalPage)) {
			if(cPage==pageNo) {
				pageBar+="<span>"+pageNo+"</span>";
			}
			else {
				pageBar+="<a href='"+request.getContextPath()+"/board/boardList?cPage="+pageNo+"'> ["+pageNo+"] </a>";
			}
			pageNo++;
		}
		
		
		if(pageNo>totalPage) {
			pageBar+="<span> [다음] </span>";
		}
		else {
			pageBar+="<a href='"+request.getContextPath()+"/board/boardList?cPage="+pageNo+"'> [다음] </a>";
		}
		
		
		request.setAttribute("pageBar", pageBar);
		request.setAttribute("cPage", cPage);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/views/mypage/message.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
