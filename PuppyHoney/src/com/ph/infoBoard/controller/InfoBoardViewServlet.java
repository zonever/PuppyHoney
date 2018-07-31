package com.ph.infoBoard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ph.infoBoard.model.service.InfoBoardService;
import com.ph.infoBoard.model.vo.InfoBoard;
import com.ph.infoBoard.model.vo.InfoReply;
import com.ph.user.model.vo.User;

/**
 * Servlet implementation class InfoBoardViewServlet
 */
@WebServlet("/infoBoard/boardView")
public class InfoBoardViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */ 
    public InfoBoardViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�럹�씠吏��꽆踰� 諛쏄린
		int infoBoardNum=Integer.parseInt(request.getParameter("no"));
		
		int cPage = Integer.parseInt(request.getParameter("cPage"));
		
		String searchType = request.getParameter("searchType");
		String inputText = request.getParameter("inputText");
		String sort = request.getParameter("sort");
		
		
		
		User u=(User)request.getSession().getAttribute("userLoggedIn");
		
		if(u==null) {
			InfoBoard infoBoard=new InfoBoardService().notLoginSelectOne(infoBoardNum);
			
			String view="";
			if(infoBoard!=null)
			{
				request.setAttribute("infoBoard", infoBoard);
				request.setAttribute("cPage", cPage);
				request.setAttribute("searchType", searchType);
				request.setAttribute("inputText", inputText);
				request.setAttribute("sort", sort);
				List<InfoReply> replyList = new InfoBoardService().selectInfoBoardReplyList(infoBoardNum);	//�뙎湲�遺덈윭�삤湲�...
				request.setAttribute("replyList", replyList);
				view="/views/board/board_info/infoBoardView.jsp";
			}
			else
			{
				request.setAttribute("msg", "議고쉶�븳 寃뚯떆臾쇱씠 �뾾�뒿�땲�떎.");
				request.setAttribute("loc", "/infoBoard/boardList");
				view="/views/common/msg.jsp";
			}
			request.getRequestDispatcher(view).forward(request, response);
		}else {
			
			//議고쉶�닔 媛숈�怨꾩젙 �븳踰덈쭔 利앷�
			//client媛� 蹂대궦 荑좏궎 �솗�씤
			Cookie[] cookie=request.getCookies();
			String boardCookieVal="";
			boolean hasRead=false;
			if(cookie!=null) {
				outer:
					for(Cookie c:cookie) {
						String name = c.getName();
						String value=c.getValue();
						if("boardCookie".equals(name)) {
							boardCookieVal=value;
							if(value.contains("|"+infoBoardNum+"|")) { //�씫�뼵�뜕�쟻�씠�엳�뵲硫�?
								hasRead=true;
								break outer;
							}
						}
					}
			}
			
			//�씫吏� �븡�븯�떎硫� 荑좏궎瑜� 留뚮뱾�뼱�꽌 ���옣
			if(!hasRead) {
				Cookie boardCookie=new Cookie("boardCookie",boardCookieVal+"|"+infoBoardNum+"|"); //10||20||30|
				//session�걡�뼱吏�硫� 吏��슦湲�!
				//釉뚮씪�슦�� �걡�뼱�졇�빞 �궘�젣
				boardCookie.setMaxAge(-1);
				
				response.addCookie(boardCookie);
			}
			
			InfoBoard infoBoard=new InfoBoardService().selectOne(infoBoardNum, hasRead);
			
			String view="";
			if(infoBoard!=null)
			{
				request.setAttribute("infoBoard", infoBoard);
				request.setAttribute("cPage", cPage);
					request.setAttribute("searchType", searchType);
					request.setAttribute("inputText", inputText);
					request.setAttribute("sort", sort);
				
				List<InfoReply> replyList = new InfoBoardService().selectInfoBoardReplyList(infoBoardNum);	//�뙎湲�遺덈윭�삤湲�...
				request.setAttribute("replyList", replyList);
				view="/views/board/board_info/infoBoardView.jsp";
			}
			else
			{
				request.setAttribute("msg", "議고쉶�븳 寃뚯떆臾쇱씠 �뾾�뒿�땲�떎.");
				request.setAttribute("loc", "/infoBoard/boardList");
				view="/views/common/msg.jsp";
			}
			request.getRequestDispatcher(view).forward(request, response);
		
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
