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

@WebServlet("/joinPage")
public class JoinServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("main/join.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String name = req.getParameter("name");
		String userId = req.getParameter("userId");
		String pwd = req.getParameter("pwd");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String gender = req.getParameter("gender");
		
		MemberVO mVo = new MemberVO();
		mVo.setName(name);
		mVo.setUserId(userId);
		mVo.setPwd(pwd);
		mVo.setEmail(email);
		mVo.setPhone(phone);
		mVo.setGender(gender);
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		
		HttpSession session = req.getSession();
		
		if(result == 1) {
			req.setAttribute("joinmessage", "회원가입에 성공하였습니다.");
		} else {
			req.setAttribute("message", "회원가입에 실패하였습니다.");
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("main/login.jsp");
		dispatcher.forward(req, resp);
	}
	
}
