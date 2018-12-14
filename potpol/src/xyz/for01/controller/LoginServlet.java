package xyz.for01.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xyz.for01.dao.MemberDAO;
import xyz.for01.dto.MemberVO;

@WebServlet("/loginPage")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = "main/login.jsp";
		
		HttpSession session = req.getSession();
		
		if(session.getAttribute("loginUser") != null) {
			url = "mainPage";
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(url);
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = "main/login.jsp";
		
		String userId = req.getParameter("userId");
		String pwd = req.getParameter("pwd");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.userCheck(userId, pwd);
		
		if(result == 1) {
			MemberVO mVo = mDao.getMember(userId);
			HttpSession session = req.getSession();
			session.setAttribute("loginUser", mVo);
			url = "index.jsp";
		}else {
			req.setAttribute("message", "아이디 또는 비밀번호를 확인해주세요");
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(url);
		dispatcher.forward(req, resp);
	}
	
}