 /* 공지사항 체크 */
 
 function subjectCheck() {
	
	if(document.subject_create_form.subjectcode.value.length == 0) {
		alert("수업코드는 필수 입력 사항입니다.");
		subject_create_form.subjectcode.focus();
		return;
	}
	
	if(document.subject_create_form.subjectname.value.length == 0) {
		alert("수업명은 필수 입력 사항입니다.");
		subject_create_form.subjectname.focus();
		return;
	}
	
	if(document.subject_create_form.subjectcontent.value.length == 0) {
		alert("수업내용은 필수 입력 사항입니다.");
		subject_create_form.subjectcontent.focus();
		return;
	}
	
	document.subject_create_form.submit();
}
