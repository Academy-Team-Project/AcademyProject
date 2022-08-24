<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/backstyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/board.css">
<meta charset="UTF-8">
<title>Notice</title>
</head>
<body>

	<%@ include file="../include/header.jsp" %>	<!-- header.jsp를 붙임 -->
	<%@ include file="../include/navigation.jsp" %>	<!-- navigation.jsp를 붙임 -->
	<center>
		<!-- 외부 테이블 -->
		<table width="70%" cellspacing="0" border="0" cellpadding="10" class="lesson_main_title">
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
			<table width="70%" height="650" cellspacing="0" border="0" cellpadding="10" class="lesson_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
						<h2>개 설 과 정</h2> <br><br>
						<form action="board_list">
							<div class="search" align="right">
						        <select name="searchOption">
						            <option value="title">수업명</option>
						            <option value="content">담당교사</option>
								</select> 
								<input type="text" name="searchKeyword">
								<input class="button" type="button" value="Search" onclick="location.href=''">
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
									<tr>
										<td class="lesson_content" align="center">10001</td>
										<td class="lesson_content"  width="50%">
											<a href="#" style="color: #000000;">국어A</a>
										</td>
										<td class="lesson_content">이국주</td>
										<td class="lesson_content">203호</td>
										<td class="lesson_content">월,목</td>
										<td class="lesson_content">20</td>
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
									</tr>
									
									<tr>
										<td class="lesson_content" align="center">10034</td>
										<td class="lesson_content"  width="50%">
											<a href="#" style="color: #000000;">과학A</a>
										</td>
										<td class="lesson_content">이경규</td>
										<td class="lesson_content">204호</td>
										<td class="lesson_content">월,수</td>
										<td class="lesson_content">15</td>
									</tr>
									
									<tr>
										<td class="lesson_content" align="center">10038</td>
										<td class="lesson_content"  width="50%">
											<a href="#" style="color: #000000;">사회A</a>
										</td>
										<td class="lesson_content">이정재</td>
										<td class="lesson_content">306호</td>
										<td class="lesson_content">화,수</td>
										<td class="lesson_content">15</td>
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
							<div align="right" class="board_inputbox">	
								<input class="button" type="button" value="등록" onclick="location.href=''">
							</div>
							
						</td>
					</tr>
			</table>
		</table>
	</center>
	<%@ include file="../include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
	
</body>
</html>