package com.ph.board.place.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.ph.board.place.model.service.PlaceBoardService;
import com.ph.board.place.model.vo.PlaceBoard;
/**
 * Servlet implementation class PlaceBoardFormEndServlet
 */
@WebServlet("/board/placeBoardFormEnd") 

public class PlaceBoardFormEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceBoardFormEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//�뙆�씪 �뾽濡쒕뱶!!
				//1. �뙆�씪�씠 �젣��濡� �뱾�뼱�솕�뒗吏� �솗�씤
				//	  multipart�젣��濡� �솕�뒗吏�
				//2. ���옣�븷 �뵒�젆�넗由щ�� 吏��젙
				//3. �뙆�씪�씠 �겕湲곕�� �깮�꽦
				//4. �뙆�씪誘명꽣媛믪쓣 媛��졇�샂
				//5. BOARD媛쒖껜瑜� �깮�꽦
				//6. 鍮꾩��땲�뒪 濡쒖쭅�쓣 �닔�뻾
				//7. �쓳�떟�럹�씠吏�瑜� �옉�꽦
				
				//1.(�뙆�씪 �젣��濡� �뱾�뼱�삩吏� �솗�씤)
				if(!ServletFileUpload.isMultipartContent(request)) 
				{
					request.setAttribute("msg", "寃뚯떆�뙋 �옉�꽦�삤瑜�[form:enctype] 愿�由ъ옄 臾몄쓽 諛붾엺.");
					request.setAttribute("loc", "/");
					request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
				}
				//2.���옣寃쎈줈 �꽕�젙
				String root=getServletContext().getRealPath("/");
				System.out.println(root);
				String saveDir=root+"upload"+File.separator+"placeboard";
				System.out.println(saveDir);
				
				//3.�뙆�씪 �겕湲� �꽕�젙
				int maxSize=1024*1024*10;
				
				MultipartRequest mpreq = new MultipartRequest(request, saveDir,maxSize,"UTF-8",new DefaultFileRenamePolicy());
				
				String userId=request.getParameter("userId");
				String origin=mpreq.getOriginalFileName("Image");
				String rename=mpreq.getFilesystemName("Image");
				String title=mpreq.getParameter("title");
				String storeName=mpreq.getParameter("storeName");
				String businessType=mpreq.getParameter("businessType");
				String location=mpreq.getParameter("location");
				String size=mpreq.getParameter("size");
				String phone=mpreq.getParameter("phone1")+"-"+mpreq.getParameter("phone2")+"-"+mpreq.getParameter("phone3");
				String time=mpreq.getParameter("open")+" - "+mpreq.getParameter("close");
				String addr=mpreq.getParameter("address2")+" "+mpreq.getParameter("address3");
				String content=mpreq.getParameter("content");
				
				PlaceBoard plBoard=new PlaceBoard();
				
				plBoard.setPlBoardId(userId);
				plBoard.setPlBoardImgOrigin(origin);
				plBoard.setPlBoardImgRename(rename);
				plBoard.setPlBoardTitle(title);
				plBoard.setPlBoardStoreName(storeName);
				plBoard.setPlBoardBusinessType(businessType);
				plBoard.setPlBoardArea(location);
				plBoard.setPlBoardDogSize(size);
				plBoard.setPlBoardPhone(phone);
				plBoard.setPlBoardTime(time);
				plBoard.setPlBoardAddr(addr);
				plBoard.setPlBoardContent(content);
				
				int result=new PlaceBoardService().insertPlaceBoard(plBoard);
				
				String msg="";
				String loc="/board/placeBoardList";
				if(result>0)
				{
					msg="寃뚯떆�뙋 �벑濡� �꽦怨�";
				}else
				{
					msg="寃뚯떆�뙋 �벑濡� �떎�뙣";
				}
				
				request.setAttribute("msg", msg);
				request.setAttribute("loc", loc);
				request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
//				System.out.println("userId : "+userId);
//				System.out.println("content : "+content);
//				System.out.println("addr : "+addr);
//				System.out.println("time : "+time);
//				System.out.println("phone : "+phone);
//				System.out.println("size : "+size);
//				System.out.println("location : "+location);
//				System.out.println("placeCate : "+placeCate);
//				System.out.println("storeName : "+storeName);
//				System.out.println("title : "+title);
//				System.out.println("origin : "+origin);
				
				
				
				
				
					
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
