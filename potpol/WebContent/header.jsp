<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
	<c:choose>
		<c:when test="${empty loginUser}">
			<div>
				<ul>
					<li><a href="loginPage">로그인</a></li>
					<li><a href="membershipPage">회원가입</a></li>
					<li><a href="#">장바구니</a></li>
					<li><a href="#">주문내역</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</div>
		</c:when>
		<c:otherwise>
			<div>
				<ul>
					<li><a href="logoutPage">로그아웃</a></li>
					<li><a href="updatePage?userId=${loginUser.userId}">회원 정보 수정</a></li>
					<li><a href="#">장바구니</a></li>
					<li><a href="#">주문내역</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</div>
		</c:otherwise>
	</c:choose>
	<nav>
		<ul>
			<li><a href="#">전시회 정보</a></li>
			<li><a href="#">티켓 오픈 일정</a></li>
			<li><a href="#">할인 정보</a></li>
			<li><a href="#">전시 관람 유의사항</a></li>
		</ul>
	</nav>
</header>