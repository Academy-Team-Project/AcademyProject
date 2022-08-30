<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/backstyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/board.css">
<script type="text/javascript" src="${pagaContext.request.contextPath }/resources/js/questionboard.js"></script>
<meta charset="UTF-8">
<title>ABC Academy</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>	<!-- header.jsp를 붙임 -->
	<%@ include file="../include/navigation.jsp" %>	<!-- navigation.jsp를 붙임 -->
	<center>
		<!-- 외부 테이블 -->
		<table width="80%" cellspacing="0" border="0" cellpadding="10" class="notice_main_title">
			<tr>
				<td align="center">
					<span class="notice_main_title01"></span>
				</td>
			</tr>
			<tr>
				<td align="center">
					<span class="notice_main_title02"></span>
				</td>
			</tr>
			<!-- 내부 테이블 -->
			<table width="80%" height="80%" cellspacing="0" border="0" cellpadding="10" class="notice_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
						<h2>질문게시판 보기</h2> <br><br>
							<table width="85%" height="70%" border="0" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<form action="question_modify"  method="post" name="question_write_form">
									<input type="hidden" name="questionnum" value="${questionview.questionnum }"> <!-- 화면에는 숨긴 값 -->
									
									<tr>
										<td class="notice_title" width="20%" align="left">ID : </td>
										<td class="">
											<input class="input_box" type="text" name="memberid" size="50" value="${questionview.memberid }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<td class="notice_title"  width="20%" align="left">이름 : </td>
										<td class="">
											<input class="input_box" type="text" name="membername" size="50" value="${questionview.membername }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<td class="notice_title"  width="20%" align="left">제목 : </td>
										<td class="">
											<input class="input_box" type="text" name="questiontitle" size="100" value="${questionview.questiontitle }">
										</td>
									</tr>
									
									<tr>
										<td class="notice_title"  width="20%" align="left">내용 : </td>
										<td>
											<textarea class="text_area" rows="30" cols="150" name="questioncontent">${questionview.questioncontent }</textarea>
										</td>
									</tr>
									
									<tr>
										<td colspan="2" align="right">
										<%
											String sessionid = (String) session.getAttribute("sessionId");
											String viewid = request.getAttribute("questionviewId").toString();   // controller의 Model에서 넘어온 값 빼는 방법
											if (sessionid.equals(viewid)){
										%>
											<input class="button" type="button" value="수정" onclick="questionCheck()">&nbsp;
											<input class="button" type="button" value="삭제" onclick="location.href='/question/questionDelete?questionnum='+${questionview.questionnum}">&nbsp;
										<%
											}else if(sessionid.equals("admin")){
										%>
											<input class="button" type="button" value="수정" onclick="questionCheck()">&nbsp;
											<input class="button" type="button" value="삭제" onclick="location.href='/question/questionDelete?questionnum='+${questionview.questionnum}">&nbsp;
										<%
											}
										%>
										<input class="button" type="button" value="목록" onclick="location.href='/question/question_list'">
										</td>
									</tr>
								</form>
							</table>
						</td>
					</tr>
			</table>
		</table>
	</center>
	<%@ include file="../include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
</body>
</html>