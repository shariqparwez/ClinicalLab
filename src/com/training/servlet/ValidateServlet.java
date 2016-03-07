package com.training.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.training.entity.*;
import com.training.utils.ValidateMember;
/**
 * Servlet implementation class ValidateServlet
 */
public class ValidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName;
		String passWord;
		String role;
		String labCode;
		
		boolean check;
		
		userName = request.getParameter("userName");
		passWord = request.getParameter("passWord");
		role = request.getParameter("role");
		labCode = request.getParameter("labCode");
		
		Member mem = new Member(userName, passWord, role, labCode);
		
		ValidateMember val = new ValidateMember();
		
		check = val.Validate(mem);
		
		request.setAttribute("logresult", check);
		
		RequestDispatcher rd = request.getRequestDispatcher("LoginAuth.jsp");
		
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
