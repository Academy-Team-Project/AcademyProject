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
						<h2>수 업 등 록</h2> <br><br>
							<table width="85%" height="70%" border="0" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<form action="subject_modify" name="subject_create_form"  method="post">
									
									<tr>
										<th class="subject_title" width="20%" align="left">수업코드</th>
										<td class="">${subjectview.subjectcode }</td>
									</tr>
								
									<tr>
										<th class="subject_title" width="20%" align="left">수업명</th>
										<td class="">${subjectview.subjectname }</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">수업일</th>
										<td class="">${subjectview.subjectdays }</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">최대수강인원</th>
										<td class="">${subjectview.subjectstudentmax }</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">강의실</th>
										<td class="">${subjectview.subjectclassroom }</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">담당교사</th>
										<td>${subjectview.membername }</td>
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
											String viewid = request.getAttribute("subjectteacherId").toString();   // controller의 Model에서 넘어온 값 빼는 방법
											if (sessionid.equals(viewid)) {
										%>
											<input class="button" type="button" value="수정" onclick="location.href='/lesson/subject_modify'">&nbsp;&nbsp;
											<input class="button" type="button" value="삭제" onclick="location.href='/lesson/subjectDelete?subjectcode='+${subjectview.subjectcode}">&nbsp;&nbsp;
										<%
											} else if (sessionid.equals(viewid) || sessionid.equals("admin")) {
										%>
											<input class="button" type="button" value="삭제" onclick="location.href='/lesson/subjectDelete?subjectcode='+${subjectview.subjectcode}">&nbsp;&nbsp;
										<%		
											}
										%>	
											<input class="button" type="button" value="목록" onclick="location.href='/lesson/lesson_list'">
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