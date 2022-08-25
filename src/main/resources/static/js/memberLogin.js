/* 로그인 체크 */
 
 function loginCheck() {
	
	if(document.member_login_form.memberid.value.length == 0) {
		alert("아이디를 입력해주세요.");
		member_login_form.memberid.focus();
		return;
	}
	
	if(document.member_login_form.memberpw.value.length == 0) {
		alert("비밀번호를 입력해주세요.");
		member_login_form.memberpw.focus();
		return;
	}
	
	document.member_login_form.submit();
}