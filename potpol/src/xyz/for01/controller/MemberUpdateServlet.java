package xyz.for01.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.for01.dao.MemberDAO;
import xyz.for01.dto.MemberVO;

@WebServlet("/updatePage")
public class MemberUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId = req.getParameter("userId");
		MemberDAO mDao = MemberDAO.getInstance();
		
		MemberVO mVo = mDao.getMember(userId);
		req.setAttribute("mVo", mVo);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("main/memberUpdate.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		
		String name = req.getParameter("name");
		String userId = req.getParameter("userId");
		String pwd = req.getParameter("pwd");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String gender = req.getParameter("gender");
		String admin = req.getParameter("admin");
		
		MemberVO mVo = new MemberVO();
		mVo.setName(name);
		mVo.setUserId(userId);
		mVo.setPwd(pwd);
		mVo.setEmail(email);
		mVo.setPhone(phone);
		mVo.setGender(gender);
		mVo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		mDao.updateMember(mVo);
		
		resp.sendRedirect("loginPage");
	}
	
}
