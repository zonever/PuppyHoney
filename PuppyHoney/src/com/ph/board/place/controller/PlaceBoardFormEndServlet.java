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
				//파일 업로드!!
				//1. 파일이 제대로 들어왔는지 확인
				//	  multipart제대로 왔는지
				//2. 저장할 디렉토리를 지정
				//3. 파일이 크기를 생성
				//4. 파라미터값을 가져옴
				//5. BOARD개체를 생성
				//6. 비지니스 로직을 수행
				//7. 응답페이지를 작성
				
				//1.(파일 제대로 들어온지 확인)
				if(!ServletFileUpload.isMultipartContent(request)) 
				{
					request.setAttribute("msg", "게시판 작성오류[form:enctype] 관리자 문의 바람.");
					request.setAttribute("loc", "/");
					request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
				}
				//2.저장경로 설정
				String root=getServletContext().getRealPath("/");
				System.out.println(root);
				String saveDir=root+"upload"+File.separator+"placeboard";
				System.out.println(saveDir);
				
				//3.파일 크기 설정
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
					msg="게시판 등록 성공";
				}else
				{
					msg="게시판 등록 실패";
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
