package com.ph.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ph.user.model.service.UserService;
import com.ph.user.model.vo.User;

import static common.Encrypt.*;

@WebServlet("/user/loginEnd")
public class UserLoginEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UserLoginEndServlet() {
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
				String id=request.getParameter("userId");
				String pw_=request.getParameter("userPw");
				String pw=getSha512(pw_);
				
				User user=new UserService().selectUser(id);
				
				String msg="";
				String loc="";
				String view="/views/common/msg.jsp";
				//로그인체크
				if(user!=null)
				{
					//로그인성공
					if(user.getUserPw().equals(pw))
					{
						if(user.getUserLeave().equals("N"))
						{
							if(user.getUserEmailChecked()==1)
							{
								msg=user.getUserId()+"님 환영합니다";
								loc="/";
								//세션생성
								HttpSession session=request.getSession();
								session.setAttribute("userLoggedIn",user);
								//아이디저장 체크여부 받아오기
								String saveId=request.getParameter("saveId");
								//체크가 된 경우
								if(saveId!=null)
								{
									Cookie c= new Cookie("saveId",id);
									c.setMaxAge(30*24*60*60);
									c.setPath("/");
									response.addCookie(c);
								}
								//체크안된 경우
								else
								{
									Cookie c=new Cookie("saveId",id);
									c.setMaxAge(0);
									c.setPath("/");
									response.addCookie(c);
								}
							}
							else
							{
								msg="E-Mail 인증 후 로그인해주세요";
								loc="/";
							}
							
						}
						else
						{
							msg="탈퇴한 회원입니다";
							loc="/";
						}
						
					}
					//비밀번호 오류
					else
					{
						msg="비밀번호가 틀렸습니다";
						loc="/";
					}
				}
				//ID오류
				else
				{
					msg="ID가 없습니다";
					loc="/";
				}
				request.setAttribute("msg", msg);
				request.setAttribute("loc", loc);
				request.getRequestDispatcher(view).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
