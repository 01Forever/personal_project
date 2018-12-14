<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/frame.css">
<link rel="stylesheet" type="text/css" href="./css/membershipcss.css">
<script type="text/javascript" src="script/member.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
	function allCheck() {
		if($("input:checkbox[id='check1']").is(":checked")){
			 $("input:checkbox[id='check2']").prop("checked", true);
			 $("input:checkbox[id='check3']").prop("checked", true);
			 $("input:checkbox[id='check4']").prop("checked", true);
			 $("input:checkbox[id='check5']").prop("checked", true);
		}
	}
</script>
<title>membership</title>
</head>
<body>
<jsp:include page="../subhead.jsp" />
<h2>약 관 동 의</h2>
<section>
	<form action="joinPage" class="totalform" name="frm">
		<ul>
			<li style="text-decoration: underline;"><label><input type="checkbox" name="check1" id="check1" onclick="allCheck()">이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택),
			프로모션 안내 메일 수신(선택)에 모두 동의합니다.</label></li>
		</ul>
		<ul>
			<li><label>
			<input type="checkbox" name="check2"  id="check2">이용약관 동의</label><small class="essential">(필수)</small>
			<div class="check">
				<p><b>여러분 환영합니다</b><br><br>첫눈에 널 알아보게 됐어 서롤 불러왔던 것처럼 내 혈관 속 DNA가 말해줘 내가 찾아 헤매던 너라는 걸<br>
				우리 만남은 수학의 공식, 종교의 율법, 우주의 섭리 내게 주어진 운명의 증거 내 꿈의 출처 Take it take it 너에게만 내민 내 손은 정해진 숙명</p>
			</div>
			</li>
		</ul>
		<ul>
			<li><label>
			<input type="checkbox" name="check3"  id="check3">개인정보 수집 및 이용에 대한 안내</label><small class="essential">(필수)</small>
			<div class="check">
				<p>너는 내 삶에 다시 뜬 햇빛 어린 시절 내 꿈들의 재림 모르겠어 이 감정이 뭔지 혹시 여기도 꿈속인 건지 꿈은 사막의 푸른 신기루 내 안 깊은 곳의 a priori 
				숨이 막힐 듯이 행복해져 주변이 점점 더 투명해져 저기 멀리서 바다가 들려 꿈을 건너서 수풀 너머로 선명해지는 그 곳으로 가 Take my hands now You are the cause of my euphoria<br>
				Euphoria<br>Take my hands now You are the cause of my euphoria<br>Euphoria<br>Close the door now When I'm with you I'm in utopia 너도 나처럼 지워진 꿈을 찾아 헤맸을까
				운명 같은 흔한 말관 달라 아픈 너의 눈빛이 나와 같은 곳을 보는 걸 Won't you please stay in dreams 저기 멀리서 바다가 들려 꿈을 건너서 수풀 너머로 선명해지는 그 곳으로 가
				Take my hands now You are the cause of my euphoria<br>Euphoria</p>
			</div>
			</li>
		</ul>
		<ul>
			<li><label>
			<input type="checkbox" id="check4" name="check4">위치정보 이용약관 동의</label><small class="choice">(선택)</small>
			<div class="check">
				<p>그럴 수만 있다면 물어보고 싶었어 그때 왜 그랬는지 왜 날 내쫓았는지 어떤 이름도 없이 여전히 널 맴도네 작별이 무색해 그 변함없는 색채<br>
				나에겐 이름이 없구나 나도 너의 별이었는데 넌 빛이라서 좋겠다 난 그런 널 받을 뿐인데 무너진 왕성에 남은 명이 뭔 의미가 있어 죽을 때까지 받겠지
				니 무더운 시선 아직 난 널 돌고 변한 건 없지만 사랑에 이름이 없다면 모든 게 변한 거야 넌 정말로 Eris를 찾아낸 걸까 말해 내가 저 달보다 못한 게 뭐야
				us는 u의 복수형일 뿐 어쩌면 거기 처음부터 난 없었던 거야 언젠가 너도 이 말을 이해하겠지 나의 계절은 언제나 너였어 내 차가운 심장은 영하 248도
				니가 날 지운 그 날 멈췄어 Damn<br>난 맴돌고만 있어 난 헛돌고만 있어<br>한때는 태양의 세계에 속했던 별의 심장엔 텁텁한 안개층뿐</p>
			</div>
			</li>
		</ul>
		<ul>
			<li><label><input type="checkbox" id="check5" name="check5">이벤트 등 프로모션 알림 메일 수신</label><small class="choice">(선택)</small></li>
		</ul>
		<div class="float-button">
			<ul>
				<li><button type="button" onclick="href='mainPage'">비동의</button></li>
				<li><button type="submit" onclick="return membershipCheck()">동의</button></li>			
			</ul>
		</div>
	</form>
</section>
<jsp:include page="../footer.jsp" />
</body>
</html>