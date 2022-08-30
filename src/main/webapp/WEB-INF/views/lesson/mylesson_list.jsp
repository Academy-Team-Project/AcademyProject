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
						<h2>수 업 신 청</h2> <br><br>
						<form action="/lesson/mylesson_list">
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
										<th class="lesson_title">신청</th>
									</tr>
								</thead>
								
								<tbody>
									<c:forEach items="${subjectList }" var="subdto">
										<tr>
											<td class="lesson_content" align="center">${subdto.subjectcode }</td>
											<td class="lesson_content"  width="50%">
												<a href="subject_view?subjectcode=${subdto.subjectcode }" style="color: #000000;">${subdto.subjectname }</a>
											</td>
											<td class="lesson_content">${subdto.membername}</td>
											<td class="lesson_content">${subdto.subjectclassroom }</td>
											<td class="lesson_content">${subdto.subjectdays }</td>
											<td class="lesson_content">${subdto.subjectstudentmax }</td>
											<td class="lesson_content">
												<input class="button" type="button" value="신청" onclick="location.href='#'">
											</td>
										</tr>
									</c:forEach>									
								</tbody>							
							</table>
							<br><br>
							<hr>
							<br><br>
							<h2>등록한 수업</h2> <br>
							<table width="85%" height="40%" border="1" cellspacing="0" cellpadding="5">
								<thead>
										<tr>
											<th class="lesson_title">과목코드</th>
											<th class="lesson_title" width="50%">수업명</th>
											<th class="lesson_title">담당교사</th>
											<th class="lesson_title">강의실</th>
											<th class="lesson_title">수업일</th>
											<th class="lesson_title">수강정원</th>
											<th class="lesson_title">취소</th>
										</tr>
								</thead>
								<tbody>
										<tr>
											<td class="lesson_content" align="center">10001</td>
											<td class="lesson_content"  width="50%">
												<a href="#" style="color: #000000;">국어A</a>
											</td>
											<td class="lesson_content">이국주</td>
											<td class="lesson_content">203호</td>
											<td class="lesson_content">월,금</td>
											<td class="lesson_content">20</td>
											<td class="lesson_content">
												<input class="button" type="button" value="취소" onclick="location.href=''">
											</td>
										</tr>
								</tbody>
							</table>	
							<br><br>
						</td>
					</tr>
			</table>
		</table>
	</center>
	<%@ include file="../include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
	
</body>
</html>