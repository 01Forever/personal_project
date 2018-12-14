<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/frame.css">
<link rel="stylesheet" type="text/css" href="./css/joincss.css">
<script type="text/javascript" src="script/member.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(function() {
	$(document.frm.userId).on("keyup", function() {
		var userId = this;
		if(userId.value.length < 4){
			$(this).next().html("아이디는 4글자 이상으로 해주세요.");
			
		} else {
			$.ajax({
				url : "idCheckPage",
				success : function(data) {
					if(data == 1){
						$(userId).next().html("이미 사용중인 아이디입니다.");
						$(document.frm.reid).val("");
						
					} else {
						$(userId).next().html("");
						$(document.frm.reid).val($(userId).val());
					}
					
				},
				error : function(xhr) {
					console.log(xhr);
				},
				data : "userId=" + userId.value
			
			});
		}
	})
});
</script>
<title>join</title>
</head>
<body>
<jsp:include page="../subhead.jsp" />
<h2>회 원 가 입</h2>
<section>
	<form action="joinPage" method="post" name="frm">
		<ul>
			<li><label for="name">이름*</label>
				<input class="large" type="text" id="name" name="name" title="Name" placeholder="이름을 입력하세요." maxlength="10">
			</li>
		</ul>
		<ul>
			<li><label for="userId">아이디*</label>
				<input class="large" type="text" id="userId" name="userId" title="ID" placeholder="아이디를 입력하세요.">
				<span style="color: red; font-size: 12px;"></span>
				<input type="hidden" name="reid" size="20">
			</li>
		</ul>
		<ul>
			<li><label for="pwd">비밀번호*</label>
				<input class="large" type="password" id="pwd" name="pwd" title="PassWord" placeholder="비밀번호를 입력하세요.">
			</li>
		</ul>
		<ul>
			<li><label for="pwd_check">비밀번호 확인*</label>
				<input class="large" type="password" id="pwd_check" name="pwd_check" title="PassWord_Check" placeholder="비밀번호를 다시 입력하세요.">
			</li>
		</ul>
		<ul>
			<li><label for="email">이메일</label><small style="color: gray;">(선택)</small><br>
				<input class="large" type="email" id="email" name="email" title="E-Mail" placeholder="선택 입력">
			</li>
		</ul>
		<ul>
			<li><label for="phone">전화번호</label><small style="color: gray;">(선택)</small><br>
				<input class="large" type="text" id="phone" name="phone" title="Phone" placeholder="010-0000-0000">
			</li>
		</ul>
		<ul class="gender">
			<li>성별<br>
				<label><input type="radio" id="XX" name="gender" title="gender" value="여성">여성</label>
				<label><input type="radio" id="XY"  name="gender" title="gender" value="남성">남성</label>
				<label><input type="radio" id="YY"  name="gender" title="gender" value="선택 안함" checked="checked">선택 안함</label>
			</li>
		</ul>
		<ul class="button">
			<li><input type="submit" title="Join" value="회원가입" onclick="return joinCheck()"></li>
			<li><input type="reset" title="Reset" value="취소"></li>
		</ul>
	</form>
</section>
<jsp:include page="../footer.jsp" />
</body>
</html>