<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<h2>성 적 관 리</h2> <br><br>
							<table width="85%" height="70%" border="1" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<thead>
									<tr>
										<th class="lesson_title">과목코드</th>
										<th class="lesson_title" width="50%">수업명</th>
										<th class="lesson_title">담당교사</th>
										<th class="lesson_title">강의실</th>
										<th class="lesson_title">수업일</th>
										<th class="lesson_title">수강인원</th>
										<th class="lesson_title">성적등록</th>
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
										<td class="lesson_content">월,목</td>
										<td class="lesson_content">20</td>
										<td class="lesson_content" align="center">
											<input class="button" type="button" value="등록" onclick="location.href=''">
										</td>
									</tr>
									
									<tr>
										<td class="lesson_content" align="center">10002</td>
										<td class="lesson_content"  width="50%">
										<a href="#" style="color: #000000;">국어B</a>
										</td>
										<td class="lesson_content">송강호</td>
										<td class="lesson_content">205호</td>
										<td class="lesson_content">화,금</td>
										<td class="lesson_content">20</td>
										<td class="lesson_content" align="center">
											<input class="button" type="button" value="등록" onclick="location.href=''">
										</td>
									</tr>
									
									<tr>
										<td class="lesson_content" align="center">10013</td>
										<td class="lesson_content"  width="50%">
											<a href="#" style="color: #000000;">영어A</a>
										</td>
										<td class="lesson_content">강하늘</td>
										<td class="lesson_content">301호</td>
										<td class="lesson_content">월,화,목</td>
										<td class="lesson_content">25</td>
										<td class="lesson_content" align="center">
											<input class="button" type="button" value="등록" onclick="location.href=''">
										</td>
									</tr>
									
									<tr>
										<td class="lesson_content" align="center">10021</td>
										<td class="lesson_content"  width="50%">
											<a href="#" style="color: #000000;">수학A</a>
										</td>
										<td class="lesson_content">유재석</td>
										<td class="lesson_content">302호</td>
										<td class="lesson_content">수,목,금</td>
										<td class="lesson_content">25</td>
										<td class="lesson_content" align="center">
											<input class="button" type="button" value="등록" onclick="location.href=''">
										</td>
									</tr>										
								</tbody>
								
								<!-- 반복문 var은 글 하나당 붙일 이름 -->
								<!-- 
								<c:forEach items="" var="">
									<tr> 
										<td  class="board_content">1</td>
										<td class="board_content">whitecat</td>
										<td class="board_content" style="text-align: left;">
											<a href="qView?qnum=" style="color: #808080;">
												<c:choose>
													<c:when test="">
														<c:out value=""></c:out>...
													</c:when>
													<c:otherwise>
														<c:out value=""></c:out>
													</c:otherwise>											
												</c:choose>
											</a>
										</td>
										<td class="board_content">흰냥이</td>
										<td class="board_content">
											<c:out value=""></c:out>
										</td>
									</tr>
								</c:forEach>
								-->
								<!-- 
								<tr>
									<td colspan="6" align="right">
										<input class="button" type="button" value="등록" onclick="location.href=''">
									</td>
								</tr>
								 -->
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