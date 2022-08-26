 /* 공지사항 체크 */
 
 function noticeCheck() {
	
	if(document.notice_write_form.noticetitle.value.length == 0) {
		alert("제목은 필수 입력 사항입니다.");
		notice_write_form.noticetitle.focus();
		return;
	}
	
	if(document.notice_write_form.noticetitle.value.length < 5) {
		alert("제목은 5자 이상이어야 합니다.");
		notice_write_form.noticetitle.focus();
		return;
	}
	
	if(document.notice_write_form.noticecontent.value.length == 0) {
		alert("내용은 필수 입력 사항입니다.");
		notice_write_form.noticecontent.focus();
		return;
	}
	
	if(document.notice_write_form.noticecontent.value.length < 10) {
		alert("내용은 10자 이상이어야 합니다.");
		notice_write_form.noticecontent.focus();
		return;
	}
	
	document.notice_write_form.submit();
}