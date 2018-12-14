function loginCheck() {
	if(document.frm.userId.value == "") {
		alert("아이디를 입력해주세요");
		frm.userId.focus();
		return false;
	}
	
	if(document.frm.pwd.value == "") {
		alert("비밀번호를 입력해주세요");
		frm.pwd.focus();
		return false;
	}

	return true;
}

function joinCheck() {
	if(document.frm.name.value.length == 0) {
		alert("이름을 입력해주세요.");
		frm.name.focus();
		return false;
	}
	
	if(document.frm.userId.value.length == 0) {
		alert("아이디를 입력해주세요.");
		frm.userId.focus();
		return false;
	}
	
	if(document.frm.userId.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다.");
		frm.userId.focus();
		return false;
	}
	
	if(document.frm.pwd.value == "") {
		alert("비밀번호를 입력해주세요.");
		frm.pwd.focus();
		return false;
	}
	
	if(document.frm.pwd.value != document.frm.pwd_check.value) {
		alert("비밀번호가 일치하지 않습니다.");
		frm.pwd_check.focus();
		return false;
	}
	
	if(document.frm.reid.value.length == 0) {
		alert("중복된 아이디입니다. 다시 입력해주세요.");
		frm.userId.focus();
		return false;
	}
	
	return true;
}

function membershipCheck() {
	if(!$("#check2").prop("checked")){
		alert("이용 약관 동의는 필수입니다.");
		return false;
	}
	if(!$("#check3").prop("checked")){
		alert("개인정보 수집 및 이용에 대한 안내는 필수입니다.");
		return false;
	}
	
	return true;
}
