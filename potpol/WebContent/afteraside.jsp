<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<aside>
<p style="margin-top:34px;">
	<strong>${loginUser.name}(${loginUser.userId})님</strong> 안녕하세요.
</p> 
<div class="find">
		<ul>
			<li><a href="logoutPage">로그아웃</a></li>
		</ul>
	</div>
<a class="cont" href="updatePage?userId=${loginUser.userId}">회원 정보 수정</a>
</aside>