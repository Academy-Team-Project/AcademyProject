 /* 공지사항 체크 */
 
 function questionCheck() {
	
	if(document.question_write_form.questiontitle.value.length == 0) {
		alert("제목은 필수 입력 사항입니다.");
		question_write_form.questiontitle.focus();
		return;
	}
	
	if(document.question_write_form.questiontitle.value.length < 5) {
		alert("제목은 5자 이상이어야 합니다.");
		question_write_form.questiontitle.focus();
		return;
	}
	
	if(document.question_write_form.questioncontent.value.length == 0) {
		alert("내용은 필수 입력 사항입니다.");
		question_write_form.questioncontent.focus();
		return;
	}
	
	if(document.question_write_form.questioncontent.value.length < 10) {
		alert("내용은 10자 이상이어야 합니다.");
		question_write_form.questioncontent.focus();
		return;
	}
	
	document.question_write_form.submit();
}
