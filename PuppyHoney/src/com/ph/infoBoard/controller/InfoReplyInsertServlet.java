package com.ph.infoBoard.controller;

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ph.infoBoard.model.service.InfoBoardService;
import com.ph.infoBoard.model.vo.InfoReply;

/**
 * Servlet implementation class InfoReplyInsertServlet
 */
@WebServlet("/infoReply/infoReplyInsert")
public class InfoReplyInsertServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */ 
    public InfoReplyInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int infoBoardRef=Integer.parseInt(request.getParameter("infoBoardRef"));	//寃뚯떆湲�踰덊샇
		String infoReplyWriter=request.getParameter("infoReplyWriter");	//�옉�꽦�옄
		String infoReplyContent=request.getParameter("infoReplyContent");	//�뙎湲��궡�슜
		int infoReplyLevel=Integer.parseInt(request.getParameter("infoReplyLevel"));	//�떟湲�援щ텇 1���뙎湲� 2�뒗�떟湲�
		int infoReplyRef=Integer.parseInt(request.getParameter("infoReplyRef"));	//�뙎湲�踰덊샇
		int cPage=Integer.parseInt(request.getParameter("cPage"));
		String searchType=request.getParameter("searchType");
		String inputText=request.getParameter("inputText");
		String sort=request.getParameter("sort");
		
		
		InfoReply ir = new InfoReply();
		ir.setBoardRef(infoBoardRef);
		ir.setReplyId(infoReplyWriter);
		ir.setReplyContent(infoReplyContent);
		ir.setReplyLevel(infoReplyLevel);
		ir.setReplyRef(infoReplyRef);
		
		//鍮꾩��땲�뒪濡쒖쭅 �닔�뻾
		int result=new InfoBoardService().insertInfoReply(ir);
		
		String msg="";
		String loc="";
		String view="/views/common/msg.jsp";
		
		if(result>0)
		{
			msg="�뙎湲��씠 �벑濡앸릺�뿀�뒿�땲�떎.";
		}
		else {
			msg="�뙎湲��벑濡앹씠 �떎�뙣�뻽�뒿�땲�떎.";
		}
		loc="/infoBoard/boardView?no="+infoBoardRef+"&cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort;
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		request.getRequestDispatcher(view).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
