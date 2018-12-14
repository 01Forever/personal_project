<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no">
<title> 오, 늘 exhibition </title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
	$(function(){
	    $('.frame').bxSlider();
	  });
</script>
</head>
<body>
<jsp:include page="header.jsp" />
<section>
	<div>
		<article class="imgframe">
			<ul class="frame">
				<li><img alt="" src="https://scontent-hkg3-2.cdninstagram.com/vp/1c81ae717ba27de106420c4cc09530c8/5C05728F/t51.2885-15/e35/36984261_1857583721204875_858707156680048640_n.jpg"></li>
				<li><img alt="" src="https://scontent-icn1-1.cdninstagram.com/vp/d3f751fe2ec97cb26290e853c7b2264e/5C38C7B3/t51.2885-15/e35/37998595_943841682484671_8560182249734012928_n.jpg"></li>
				<li><img alt="" src="https://scontent-icn1-1.cdninstagram.com/vp/0673c8f84380c4395e8a639da2ee946b/5C0239AD/t51.2885-15/e35/37688462_1904064659673830_7707330890120036352_n.jpg"></li>
			</ul>
		</article>
		<article class="textframe">
			<h2>IDOL</h2>
			<p>You can call me artist<br>You can call me idol<br>아님 어떤 다른 뭐라 해도<br>I don’t care<br>I’m proud of it<br>난 자유롭네<br>No more irony<br>나는 항상 나였기에<br>손가락질 해, 나는 전혀 신경 쓰지 않네
			<br>나를 욕하는 너의 그 이유가 뭐든 간에<br>I know what I am<br>I know what I want<br>I never gon' change<br>I never gon' trade<br>(Trade off)<br>뭘 어쩌고 저쩌고 떠들어대셔<br>I do what I do, 그니까 넌 너나 잘하셔You can’t stop me lovin’ myself
			<br>얼쑤 좋다<br>You can’t stop me lovin’ myself<br>지화자 좋다<br>You can’t stop me lovin’ myself</p>
		</article>
		<article class="textframe">
			<h2>I'M FINE</h2>
			<p>시리도록 푸른 하늘 아래 눈 떠<br>흠뻑 쏟아지는 햇살이 날 어지럽게 해<br>한껏 숨이 차오르고 심장은 뛰어<br>느껴져 너무 쉽게 나 살아있다는 걸<br>괜찮아 우리가 아니어도<br>슬픔이 날 지워도
			<br>먹구름은 또 끼고<br>나 끝없는 꿈 속이어도<br>한없이 구겨지고<br>날개는 찢겨지고<br>언젠가 내가 내가 아니게 된달지어도<br>괜찮아 오직 나만이 나의 구원이잖아<br>못된 걸음걸이로 절대 죽지 않고 살아
			<br>How you doin? Im fine<br>내 하늘은 맑아<br>모든 아픔들이여 say goodbye<br>잘 가</p>
		</article>
	</div>
	<c:choose>
		<c:when test="${empty loginUser}">
			<jsp:include page="befaside.jsp" />
		</c:when>
		<c:otherwise>
			<jsp:include page="afteraside.jsp" />
		</c:otherwise>
	</c:choose>
</section>
<jsp:include page="footer.jsp" />
</body>
</html>