package com.ph.infoBoard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ph.infoBoard.model.service.InfoBoardService;
import com.ph.infoBoard.model.vo.InfoBoard;

/**
 * Servlet implementation class InfoBoardListServlet
 */
@WebServlet("/infoBoard/boardList")
public class InfoBoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */ 
    public InfoBoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		//�럹�씠吏� 泥섎━
		int numPerPage=10;
		int cPage;
		try {
			cPage=Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage=1;
		}
		
		List<InfoBoard> list = new InfoBoardService().selectInfoBoardList(cPage,numPerPage);
		//pageBar留뚮뱾湲�
		//�쟾泥� �옄猷� �닔
		int totalContent=new InfoBoardService().selectInfoBoardCount();
		//�쟾泥� �럹�씠吏� �닔
		int totalPage=(int)Math.ceil((double)totalContent/numPerPage);
		int barSize=5;
		String pageBar="";
		int pageNo=((cPage-1)/barSize)*barSize+1;
		int pageEnd=pageNo+barSize-1;
		
		//pagebar留뚮뱾湲�!!
		if(pageNo==1) {
			pageBar+="<li class='page-item disabled'><a class='page-link'>Previous</a></li>";
		}else {
			pageBar+="<li class='page-item'><a class='page-link' href='"+request.getContextPath()+"/infoBoard/boardList?cPage="+(pageNo-1)+"'>Previous</a></li>";
		}
		
		//�럹�씠吏� 踰덊샇 援ъ꽦
		while(!(pageNo>pageEnd||pageNo>totalPage)) {
			if(cPage==pageNo) {
				pageBar+="<li class='page-item disabled'><a class='page-link'>"+pageNo+"</a></li>";
			}else {
				pageBar+="<li class='page-item'><a class='page-link' href='"+request.getContextPath()+"/infoBoard/boardList?cPage="+pageNo+"'>"+pageNo+"</a></li>";
			}
			pageNo++;
		}
		
		//�떎�쓬留뚮뱾湲�
		if(pageNo>totalPage) {
			pageBar+="<li class='page-item disabled'><a class='page-link'>Next</a></li>";
		}else {
			pageBar+="<li class='page-item'><a class='page-link' href='"+request.getContextPath()+"/infoBoard/boardList?cPage="+(pageNo)+"'>Next</a></li>";
		}
		//�럹�씠吏�諛� 援ъ꽦 �걹!
		
		
		request.setAttribute("list", list);
		request.setAttribute("cPage", cPage);
		request.setAttribute("pageBar", pageBar);
		request.getRequestDispatcher("/views/board/board_info/infoBoardList.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
