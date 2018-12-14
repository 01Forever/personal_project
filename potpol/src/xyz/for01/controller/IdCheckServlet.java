package xyz.for01.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.for01.dao.MemberDAO;

@WebServlet("/idCheckPage")
public class IdCheckServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId = req.getParameter("userId");
		MemberDAO mDao = MemberDAO.getInstance();
		
		int result = mDao.confirmID(userId);
		
		resp.getWriter().print(result);
	}
	
}
