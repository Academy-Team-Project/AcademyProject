 /* 가입 양식 체크 */
 
 function joinCheck() {
	
	if(document.member_join_form.membertype.value.length == 0) {
		alert("회원구분은 필수 입력사항입니다.");
		member_join_form.membertype.focus();
		return;
	}
	
	if(document.member_join_form.memberid.value.length == 0) {
		alert("아이디는 필수 입력사항입니다.");
		member_join_form.memberid.focus();
		return;
	}
	
	if(document.member_join_form.memberid.value.length < 5) {
		alert("아이디는 5글자 이상이어야 합니다.");
		member_join_form.memberid.focus();
		return;
	}
	
	if(document.member_join_form.membername.value.length == 0) {
		alert("이름은 필수 입력사항입니다.");
		member_join_form.membername.focus();
		return;
	}
	
	if(document.member_join_form.memberpw.value.length == 0) {
		alert("비밀번호는 필수 입력사항입니다.");
		member_join_form.memberpw.focus();
		return;
	}
	
	if(document.member_join_form.memberpw.value.length < 8) {
		alert("비밀번호는 8글자 이상이어야 합니다.");
		member_join_form.memberpw.focus();
		return;
	}
	
	if(document.member_join_form.memberpwcheck.value.length == 0) {
		alert("비밀번호 체크는 필수 입력사항입니다.");
		member_join_form.memberpwcheck.focus();
		return;
	}
	
	if(document.member_join_form.memberpw.value != document.member_join_form.memberpwcheck.value) {
		alert("비밀번호 체크가 일치하지 않습니다. 비밀번호를 다시 확인해주세요.");
		member_join_form.memberpwcheck.focus();
		return;
	}
	
	if(document.member_join_form.memberemail.value.length == 0) {
		alert("이메일은 필수 입력사항입니다.");
		member_join_form.memberemail.focus();
		return;
	}
	
	document.member_join_form.submit();	/* 모든 조건이 충족된 경우 */
}