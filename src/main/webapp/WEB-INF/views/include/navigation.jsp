<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/navigation.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/backstyle.css">
<meta charset="UTF-8">
<title>Navigation</title>
</head>
<body>
	<nav>
	  <h3> Menu  </h3>
		<%
			String sessionType = (String) session.getAttribute("sessionType");
			if (sessionType == null) {
		%>
			<a href="/academy_introduction"> 학원안내 </a>
			<a href="/academy_location"> 오시는길 </a>
		<%
			} else if (sessionType.equals("학생")) {
		%>
			<a href="/notice/notice_list"> 공지사항 </a>
			<a href="/question/question_list"> 질문게시판 </a>
			<a href="/member/memberModify"> 정보수정 </a>
			<a href="/lesson/mylesson_list"> 내 수업 </a>
			<a href="/academy_introduction"> 학원안내 </a>
			<a href="/academy_location"> 오시는길 </a>
		<%
			} else if (sessionType.equals("교사")) {
		%>	
			<a href="/notice/notice_list"> 공지사항 </a>
			<a href="/question/question_list"> 질문게시판 </a>
			<a href="/member/memberModify"> 정보수정 </a>
			<a href="/lesson/lesson_list"> 수업관리 </a>
			<a href="/lesson/grade_list"> 성적관리 </a>
			<a href="/academy_introduction"> 학원안내 </a>
			<a href="/academy_location"> 오시는길 </a>
		<%
			} else if (sessionType.equals("직원")) {
		%>
			<a href="/notice/notice_list"> 공지사항 </a>
			<a href="/question/question_list"> 질문게시판 </a>
			<a href="/lesson/lesson_list"> 수업관리 </a>
			<a href="/lesson/grade_list"> 성적관리 </a>
			<a href="/member/member_list"> 회원관리 </a>
			<a href="/academy_introduction"> 학원안내 </a>
			<a href="/academy_location"> 오시는길 </a>
		<%
			} 
		%>		
	</nav>
	<br>
</body>
</html>