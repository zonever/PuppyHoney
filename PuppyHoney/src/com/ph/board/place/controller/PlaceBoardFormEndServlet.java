package com.ph.board.place.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
				String title=request.getParameter("title");
				String storeName=request.getParameter("storeName");
				String placeCate=request.getParameter("placeCate");
				String location=request.getParameter("location");
				String phone=request.getParameter("phone1")+request.getParameter("phone2")+request.getParameter("phone3");
				String open=request.getParameter("open");
				String close=request.getParameter("close");
				String addr=request.getParameter("address1")+request.getParameter("address2")+request.getParameter("address3");
				String content=request.getParameter("content");
				
				
				
				
					
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
