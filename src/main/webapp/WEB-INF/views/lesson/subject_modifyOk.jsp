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
						<h2>강의 수정 확인</h2> <br><br>
							<table width="85%" height="70%" border="0" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<form action="/lesson/lesson_list" name="subject_create_form"  method="post">
									
									<tr>
										<th class="subject_title" width="20%" align="left">수업코드</th>
										<td class="">${subjectDto.subjectcode }</td>
									</tr>
								
									<tr>
										<th class="subject_title" width="20%" align="left">수업명</th>
										<td class="">${subjectDto.subjectname }</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">수업일</th>
										<td class="">${subjectDto.subjectdays }</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">최대수강인원</th>
										<td class="">${subjectDto.subjectstudentmax }</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">강의실</th>
										<td class="">${subjectDto.subjectclassroom }</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">담당교사</th>
										<td>${subjectDto.membername }</td>
									</tr>
					
									<tr>
										<th class="subject_title"  width="20%" align="left">수업내용</th>
										<td class="">
											<textarea class="text_area" rows="20" cols="100" name="subjectcontent" readonly="readonly">${subjectDto.subjectcontent }</textarea>
										</td>
									</tr>
									
									<tr>
										<td colspan="6" align="right">
											<input class="button" type="button" value="확인" onclick="location.href='/lesson/lesson_list'">&nbsp;&nbsp;
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