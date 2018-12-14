<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" type="text/css" href="./css/frame.css">
<link rel="stylesheet" type="text/css" href="./css/logincss.css">
<script type="text/javascript" src="./script/member.js"></script>
</head>
<body>
<jsp:include page="../subhead.jsp" />
<h2>L O G I N</h2>
<section>
	<div class="log">
		<form action="loginPage" method="post" name="frm">
			<ul>
				<li>
					<label for="userId"><input type="text" id="userId" name="userId" size="15" placeholder="아이디"></label>	
				</li>
				<li>
					<label for="pwd"><input type="password" id="pwd" name="pwd" size="15" placeholder="비밀번호"></label>
				</li>
				<li style="color:red; font-size: 12px;">${message}</li>
				<li style="color: orange; font-size: 12px;">${joinmessage}</li>
				<li>
					<input class="subm" type="submit" title="login" value="로그인" onclick="return loginCheck()">
				</li>
			</ul>	
		</form>
	</div>
	<div class="findframe">
		<div class="find">
			<ul>
				<li><a href="">아이디</a></li>
				<li> . </li>
				<li><a href="">비밀번호 찾기</a></li>
			</ul>
		</div>
		<a class="cont" href="./membership.html">회원 가입</a>
	</div>
</section>
<jsp:include page="../footer.jsp" />
</body>
</html>