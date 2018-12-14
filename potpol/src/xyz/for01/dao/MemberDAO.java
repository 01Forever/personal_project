package xyz.for01.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import xyz.for01.dto.MemberVO;
import xyz.for01.util.DBManager;

public class MemberDAO {

	public MemberDAO() { }
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	// 사용자 인증시 사용하는 메소드
	public int userCheck(String userId, String pwd) {
		int result = -1;
		String sql = "SELECT PWD FROM MEMBER WHERE USERID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("pwd") != null && rs.getString("pwd").equals(pwd)) {
					result = 1;
				}else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	// 아이디로 회원 정보를 가져오는 메소드
	public MemberVO getMember(String userId) {
		MemberVO mVo = null;
		String sql = "SELECT * FROM MEMBER WHERE USERID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mVo = new MemberVO();
				mVo.setName(rs.getString("name"));
				mVo.setUserId(rs.getString("userid"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setEmail(rs.getString("email"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setGender(rs.getString("gender"));
				mVo.setAdmin(rs.getInt("admin"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mVo;
	}
	
	// 존재하는 아이디인지 확인하는 메소드
	public int confirmID(String userId) {
		int result = -1;
		String sql = "SELECT USERID FROM MEMBER WHERE USERID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			} else {
				result = -1;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return result;
	}	
	
	// 회원 정보를 DB에 추가하기 위한 메소드
	public int insertMember(MemberVO mVo) {
		int result = -1;
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getName());
			pstmt.setString(2, mVo.getUserId());
			pstmt.setString(3, mVo.getPwd());
			pstmt.setString(4, mVo.getEmail());
			pstmt.setString(5, mVo.getPhone());
			pstmt.setString(6, mVo.getGender());
			pstmt.setInt(7, 0);
			result = pstmt.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return result;
	}
	
	// 회원 정보를 변경하기 위한 메소드
	public int updateMember(MemberVO mVo) {
		int result = -1;
		String sql = "UPDATE MEMBER SET NAME=?, PWD=?, EMAIL=?, PHONE=?, GENDER=?, ADMIN=? WHERE USERID=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getName());
			pstmt.setString(2, mVo.getPwd());
			pstmt.setString(3, mVo.getEmail());
			pstmt.setString(4, mVo.getPhone());
			pstmt.setString(5, mVo.getGender());
			pstmt.setInt(6, mVo.getAdmin());
			pstmt.setString(7, mVo.getUserId());
			result = pstmt.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return result;
	}
}
