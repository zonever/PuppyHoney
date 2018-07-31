package com.ph.user.controller;

import static common.Encrypt.getSha256;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static common.Encrypt.*;
import com.ph.user.model.service.UserService;
import com.ph.user.model.vo.User;

import common.Gmail;


@WebServlet("/user/findPwdEnd")
public class UserFindPasswordEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UserFindPasswordEndServlet() {
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("userId");
		String email=request.getParameter("userEmail");
		
		User user=new UserService().selectUser(id);
		
		String msg2="";
		String loc="/";
		String view="/views/common/msg.jsp";
		
		String newpw_="";
		if(user!=null)
		{
			if(user.getUserEmail().equals(email))
			{
				for(int i=0;i<8;i++)
				{
					newpw_+=String.valueOf((int)(Math.random()*9)+1).toString();
				}
				String newpw_2=String.valueOf(newpw_).toString();
				String newpw=getSha512(newpw_2);
				user.setUserPw(newpw);
				int result=new UserService().updateUser(user);
				if(result>0)
				{
					String host = "http://localhost:9090/PuppyHoney";

					String from = "semipuppyhoney@gmail.com";

					String to = user.getUserEmail();

					String subject = "���ο� ��й�ȣ�Դϴ�";

					String content = "���ο� ��й�ȣ�� �α��� �Ŀ� �ݵ�� ��й�ȣ�� �������ּ���.<br><hr>" + 
							
							"<h4>���ο� ��й�ȣ</h4>"+
							"<div style='border:1px solid red; width:80px; height:20px;' align='center'>"+
							newpw_2+ "</div>";

					

					// SMTP�� �����ϱ� ���� ������ �����մϴ�.

					Properties p = new Properties();

					p.put("mail.smtp.user", from);

					p.put("mail.smtp.host", "smtp.googlemail.com");

					p.put("mail.smtp.port", "465");

					p.put("mail.smtp.starttls.enable", "true");

					p.put("mail.smtp.auth", "true");

					p.put("mail.smtp.debug", "true");

					p.put("mail.smtp.socketFactory.port", "465");

					p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

					p.put("mail.smtp.socketFactory.fallback", "false");

					 

					try{

					    Authenticator auth = new Gmail();

					    Session ses = Session.getInstance(p, auth);

					    ses.setDebug(true);

					    MimeMessage msg = new MimeMessage(ses); 

					    msg.setSubject(subject);

					    Address fromAddr = new InternetAddress(from);

					    msg.setFrom(fromAddr);

					    Address toAddr = new InternetAddress(to);

					    msg.addRecipient(Message.RecipientType.TO, toAddr);

					    msg.setContent(content, "text/html;charset=UTF-8");

					    Transport.send(msg);

					} catch(Exception e){

					    e.printStackTrace();

						PrintWriter script = response.getWriter();

						script.println("<script>");

						script.println("alert('������ �߻��߽��ϴ�..');");

						script.println("history.back();");

						script.println("</script>");

						script.close();		

					    return;

					}

					msg2="���ο��й�ȣ�� E-Mail�� �����߽��ϴ�. ���ο��й�ȣ�� �α��� �� �ݵ�� ��й�ȣ�� �������ּ���.";
					
				}
				else
				{
					msg2="��й�ȣã�⿡ �����߽��ϴ�. �ٽ� �õ����ּ���";
					loc="/views/user/findPassword.jsp";
				}
			}
			else
			{
				msg2="E-Mail�� �ٽ� Ȯ�����ּ���";
				loc="/views/user/findPassword.jsp";
			}
		}
		else
		{
			msg2="ID�� �ٽ� Ȯ�����ּ���";
			loc="/views/user/findPassword.jsp";
		}
		
		request.setAttribute("msg", msg2);
		request.setAttribute("loc", loc);
		request.getRequestDispatcher(view).forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
