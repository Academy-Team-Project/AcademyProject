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
								<form action="subject_createOk" name="subject_create_form"  method="post">
									
									<tr>
										<th class="subject_title" width="20%" align="left">수업코드</th>
										<td class="">
											<input class="input_box" type="text" name="subjectcode" value="" required="required">
											<br>
											<p class="subject_info"> (국어: 10001~, 영어: 20001~, 수학: 30001~, 사회: 40001~ 과학: 50001~, 기타: 90001~) </p>
										</td>
									</tr>
								
									<tr>
										<th class="subject_title" width="20%" align="left">수업명</th>
										<td class="">
											<input class="input_box" type="text" name="subjectname" value="" required="required">
										</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">수업일</th>
										<td class="">
											<input class="input_box" type="text" name="subjectdays" value="">
											<br>
											<p class="subject_info"> (월, 화, 수 목, 금, 토 중 해당 요일 입력) </p>
										</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">최대수강인원</th>
										<td class="">
											<input class="input_box" type="text" name="subjectstudentmax" value="" placeholder="인원수만 입력해주세요">
										</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">강의실</th>
										<td class="">
											<input class="input_box" type="text" name="subjectclassroom" value="">
										</td>
									</tr>
									
									<tr>
										<th class="subject_title"  width="20%" align="left">담당교사</th>
										<td>
											<input class="input_box" type="text" name="membername" value="${sessionName }" size="20" placeholder=" '-' 없이 입력하세요" readonly="readonly">
										</td>
									</tr>
					
									<tr>
										<th class="subject_title"  width="20%" align="left">수업내용</th>
										<td class="">
											<textarea class="text_area" rows="20" cols="100" name="subjectcontent" required="required"></textarea>
										</td>
									</tr>
									
									<tr>
										<td colspan="6" align="right">
											<input class="button" type="button" value="등록" onclick="subjectCheck()">
											<input class="button" type="button" value="취소" onclick="location.href='/lesson/lesson_list'">
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