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
				
				
				
				
				if(request.getParameter("free")!=null) {
					request.setAttribute("free", "free");
					int cPage = Integer.parseInt(request.getParameter("cPage"));
					String searchType = request.getParameter("searchType");
					String inputText = request.getParameter("inputText");
					String sort = request.getParameter("sort");
					
					request.setAttribute("cPage", cPage);
					request.setAttribute("searchType", searchType);
					request.setAttribute("inputText", inputText);
					request.setAttribute("sort", sort);
					
				}
				
				//�α���üũ
				if(user!=null)
				{
					//�α��μ���
					if(user.getUserPw().equals(pw))
					{
						if(user.getUserLeave().equals("N"))
						{
							if(user.getUserEmailChecked()==1)
							{
								msg=user.getUserId()+"�� ȯ���մϴ�";
								loc="/";
								//���ǻ���
								HttpSession session=request.getSession();
								session.setAttribute("userLoggedIn",user);
								//���̵����� üũ���� �޾ƿ���
								String saveId=request.getParameter("saveId");
								//üũ�� �� ���
								if(saveId!=null)
								{
									Cookie c= new Cookie("saveId",id);
									c.setMaxAge(30*24*60*60);
									c.setPath("/");
									response.addCookie(c);
								}
								//üũ�ȵ� ���
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
								msg="E-Mail ���� �� �α������ּ���";
								loc="/";
							}
							
						}
						else
						{
							msg="Ż���� ȸ���Դϴ�";
							loc="/";
						}
						
					}
					//��й�ȣ ����
					else
					{
						msg="��й�ȣ�� Ʋ�Ƚ��ϴ�";
						loc="/";
					}
				}
				//ID����
				else
				{
					msg="ID�� �����ϴ�";
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
