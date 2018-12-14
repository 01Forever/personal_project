<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/frame.css">
<link rel="stylesheet" type="text/css" href="./css/joincss.css">
<script type="text/javascript" src="script/member.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>update</title>
</head>
<body>
<jsp:include page="../subhead.jsp" />
<h2>회 원 수 정</h2>
<section>
	<form action="updatePage" method="post" name="frm">
		<ul>
			<li><label for="name">이름</label>
				<input class="large" type="text" id="name" name="name" title="Name" value="${mVo.name}" maxlength="10">
			</li>
		</ul>
		<ul>
			<li><label for="userId">아이디</label>
				<input class="large" type="text" id="userId" name="userId" title="ID" value="${mVo.userId}" readonly>
			</li>
		</ul>
		<ul>
			<li><label for="pwd">비밀번호</label>
				<input class="large" type="password" id="pwd" name="pwd" title="PassWord" placeholder="비밀번호를 입력하세요.">
			</li>
		</ul>
		<ul>
			<li><label for="pwd_check">비밀번호 확인</label>
				<input class="large" type="password" id="pwd_check" name="pwd_check" title="PassWord_Check" placeholder="비밀번호를 다시 입력하세요.">
			</li>
		</ul>
		<ul>
			<li><label for="email">이메일</label><br>
				<input class="large" type="email" id="email" name="email" title="E-Mail" value="${mVo.email}">
			</li>
		</ul>
		<ul>
			<li><label for="phone">전화번호</label><br>
				<input class="large" type="text" id="phone" name="phone" title="Phone" value="${mVo.phone}">
			</li>
		</ul>
		<ul class="gender">
			<li>성별<br>
				<label><input type="radio" id="XX" name="gender" title="gender" value="여성">여성</label>
				<label><input type="radio" id="XY"  name="gender" title="gender" value="남성">남성</label>
				<label><input type="radio" id="YY"  name="gender" title="gender" value="선택 안함" checked="checked">선택 안함</label>
			</li>
		</ul>
		<c:choose>
			<c:when test="${mVo.admin == 0}">
				<input type="hidden" name="admin" value="${mVo.admin}" readonly>
			</c:when>
			<c:otherwise>
				<ul>
					<li>등급<br>
						<label><input type="radio" id="member" name="admin" title="Admin" value="0">일반 회원</label>
						<label><input type="radio" id="master" name="admin" title="Admin" value="1">관리자</label>
					</li>
				</ul>
			</c:otherwise>
		</c:choose>
		<ul class="button">
			<li><input type="submit" title="Update" value="확인" onclick="return joinCheck()"></li>
			<li><input type="reset" title="Reset" value="취소"></li>
		</ul>
	</form>
</section>
<jsp:include page="../footer.jsp" />
</body>
</html>