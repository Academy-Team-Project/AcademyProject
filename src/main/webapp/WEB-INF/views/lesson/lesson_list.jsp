<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   <!-- 보여지는 글자수 제한을 위한 기능이 포함되어있음 -->       
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/backstyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/board.css">
<meta charset="UTF-8">
<title>ABC Academy</title>
</head>
<body>

	<%@ include file="../include/header.jsp" %>	<!-- header.jsp를 붙임 -->
	<%@ include file="../include/navigation.jsp" %>	<!-- navigation.jsp를 붙임 -->
	<center>
		<!-- 외부 테이블 -->
		<table width="80%" cellspacing="0" border="0" cellpadding="10" class="lesson_main_title">
			<tr>
				<td align="center">
					<span class="lesson_main_title01"></span>
				</td>
			</tr>
			<tr>
				<td align="center">
					<span class="lesson_main_title02"></span>
				</td>
			</tr>
			<!-- 내부 테이블 -->
			<table width="80%" height="80%" cellspacing="0" border="0" cellpadding="10" class="lesson_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
						<h2>개 설 과 정</h2> <br><br>
						<form action="/lesson/lesson_list">
							<div class="search" align="right">
						        <select name="searchOption">
						            <option value="subjectname">수업명</option>
						            <option value="teacher">담당교사</option>
								</select> 
								<input type="text" name="searchKeyword">
								<input class="button" type="submit" value="Search">
							</div>
					    </form>
							<table width="85%" height="70%" border="1" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<thead>
									<tr>
										<th class="lesson_title">과목코드</th>
										<th class="lesson_title" width="50%">수업명</th>
										<th class="lesson_title">담당교사</th>
										<th class="lesson_title">강의실</th>
										<th class="lesson_title">수업일</th>
										<th class="lesson_title">수강정원</th>
									</tr>
								</thead>
								
								<tbody>
									<c:forEach items="${subjectlist }" var="dto">
										<tr>
											<td class="lesson_content" align="center">${dto.subjectcode }</td>
											<td class="lesson_content"  width="50%">
												<a href="subject_view?subjectcode=${dto.subjectcode }" style="color: #000000;">${dto.subjectname }</a>
											</td>
											<td class="lesson_content">${dto.membername}</td>
											<td class="lesson_content">${dto.subjectclassroom }</td>
											<td class="lesson_content">${dto.subjectdays }</td>
											<td class="lesson_content">${dto.subjectstudentmax }</td>
										</tr>
									</c:forEach>							
								</tbody>
							</table>
							<div align="right" class="board_inputbox">	
							<%
								String sessiontype = (String) session.getAttribute("sessionType");
								if (sessiontype.equals("교사")) {
							%>
								<input class="button" type="button" value="등록" onclick="location.href='/lesson/subject_create'">
							<%
								}
							%>
							</div>
							
						</td>
					</tr>
			</table>
		</table>
	</center>
	<%@ include file="../include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
	
</body>
</html>