package com.ph.mypage.controller;

import static common.Encrypt.getSha512;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ph.user.model.service.UserService;
import com.ph.user.model.vo.User;

/**
 * Servlet implementation class UpdateMemberEndServlet
 */
@WebServlet("/updateMemberPageEnd")
public class UpdateMemberEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMemberEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String pw=request.getParameter("password");
		String password=getSha512(pw);
		String nickName=request.getParameter("memberNickName");
		String memberEmail=request.getParameter("memberEmail");
		User u=new User();
		u.setUserId(userId);
		u.setUserPw(password);
		u.setUserNick(nickName);
		u.setUserEmail(memberEmail);
		int result=new UserService().updateUser(u);
		
		String msg="";
		String loc="";
		String view="/views/common/msg.jsp";
		
		if(result>0) {
			msg="회원 정보 변경에 성공하였습니다.";
			loc="/views/mypage/mypage.jsp";
		}
		else {
			msg="회원 정보 변경에 실패하였습니다. 다시 시도하여 주십시오.";
			loc="/views/mypage/mypage.jsp";
		}
		
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
