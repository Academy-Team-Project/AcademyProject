<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/backstyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/board.css">
<script type="text/javascript" src="${pagaContext.request.contextPath }/resources/js/subject.js"></script>
<meta charset="UTF-8">
<title>ABC Academy</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>	<!-- header.jsp를 붙임 -->
	<%@ include file="../include/navigation.jsp" %>	<!-- navigation.jsp를 붙임 -->
	<center>
		<!-- 외부 테이블 -->
		<table width="80%" cellspacing="0" border="0" cellpadding="10" class="subject_main_title">
			<tr>
				<td align="center">
					<span class="subject_main_title01"></span>
				</td>
			</tr>
			<tr>
				<td align="center">
					<span class="subject_main_title02"></span>
				</td>
			</tr>
			<!-- 내부 테이블 -->
			<table width="80%" height="80%" cellspacing="0" border="0" cellpadding="10" class="subject_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
						<h2>강 의 내 용</h2> <br><br>
							<table width="85%" height="70%" border="0" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<form action="subject_modify" name="subject_create_form"  method="post">
									
									<tr>
										<th class="subject_title" width="20%" align="left">수업코드</th>
										<td class="">
											<input class="input_box" type="text" name="subjectcode" value="${subjectview.subjectcode }" readonly="readonly">
										</td>
									</tr>
								
									<tr>
										<th class="subject_title" width="20%" align="left">수업명</th>
										<td class="">
											<input class="input_box" type="text" name="subjectname" value="${subjectview.subjectname }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">수업일</th>
										<td class="">
											<input class="input_box" type="text" name="subjectdays" value="${subjectview.subjectdays }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">최대수강인원</th>
										<td class="">
											<input class="input_box" type="text" name="subjectstudentmax" value="${subjectview.subjectstudentmax }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">강의실</th>
										<td class="">
											<input class="input_box" type="text" name="subjectclassroom" value="${subjectview.subjectclassroom }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">담당교사</th>
										<td>
											<input class="input_box" type="text" name="membername" value="${subjectview.membername }" readonly="readonly">
										</td>
									</tr>
					
									<tr>
										<th class="subject_title"  width="20%" align="left">수업내용</th>
										<td class="">
											<textarea class="text_area" rows="20" cols="100" name="subjectcontent" readonly="readonly">${subjectview.subjectcontent }</textarea>
										</td>
									</tr>
									
									<tr>
										<td colspan="6" align="right">
										<%
											String sessionid = (String) session.getAttribute("sessionId");
											String sessiontype = (String) session.getAttribute("sessionType");
											String viewid = request.getAttribute("subjectteacherId").toString();   // controller의 Model에서 넘어온 값 빼는 방법
											
											if (sessionid.equals(viewid)) {
										%>
											<input class="button" type="button" value="수정" onclick="location.href='/lesson/subject_modify?subjectcode='+${subjectview.subjectcode}">&nbsp;&nbsp;
											<input class="button" type="button" value="삭제" onclick="location.href='/lesson/subjectDelete?subjectcode='+${subjectview.subjectcode}">&nbsp;&nbsp;
											<input class="button" type="button" value="목록" onclick="location.href='/lesson/lesson_list'">
										<%
											} else if (sessionid.equals("admin")) {
										%>
											<input class="button" type="button" value="삭제" onclick="location.href='/lesson/subjectDelete?subjectcode='+${subjectview.subjectcode}">&nbsp;&nbsp;
											<input class="button" type="button" value="목록" onclick="location.href='/lesson/lesson_list'">
										<%		
											} else if (sessiontype.equals("학생")) {
										%>	
											<input class="button" type="button" value="목록" onclick="location.href='/lesson/mylesson_list'">
										<%
											} else if (!sessionid.equals(viewid) && sessiontype.equals("교사")) {
										%>		
											<input class="button" type="button" value="목록" onclick="location.href='/lesson/lesson_list'">
										<%		
											}
										%>	
											
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