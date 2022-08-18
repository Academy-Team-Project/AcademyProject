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
		<table width="70%" cellspacing="0" border="0" cellpadding="10" class="notice_title">
			<tr>
				<td align="center">
					<span class="notice_title01"></span>
				</td>
			</tr>
			<tr>
				<td align="center">
					<span class="notice_title02"></span>
				</td>
			</tr>
			<!-- 내부 테이블 -->
			<table width="70%" height="650" cellspacing="0" border="0" cellpadding="10" class="notice_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
						<h2>공 지 사 항</h2> <br><br>
							<table width="85%" height="70%" border="1" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<thead>
									<tr>
										<th class="board_title">No</th>
										<th class="board_title">ID</th>
										<th class="board_title" width="50%">TITLE</th>
										<th class="board_title">NAME</th>
										<th class="board_title">DATE</th>
									</tr>
								</thead>
								
								<tbody>
									<tr>
										<td class="board_content">1</td>
										<td class="board_content">강아지</td>
										<td class="board_content" width="50%">멍멍</td>
										<td class="board_content">개</td>
										<td class="board_content">DATE</td>
									</tr>
									
									<tr>
										<td class="board_content">2</td>
										<td class="board_content">고양이</td>
										<td class="board_content" width="50%">야옹</td>
										<td class="board_content">나비</td>
										<td class="board_content">DATE</td>
									</tr>
									
									<tr>
										<td class="board_content">3</td>
										<td class="board_content">병아리</td>
										<td class="board_content" width="50%">삐약</td>
										<td class="board_content">영계</td>
										<td class="board_content">DATE</td>
									</tr>
									
									<tr>
										<td class="board_content">4</td>
										<td class="board_content">오리</td>
										<td class="board_content" width="50%">꽤액</td>
										<td class="board_content">미운오리새끼</td>
										<td class="board_content">DATE</td>
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
								
								<tr>
									<td colspan="5" align="right">
										<input class="button" type="button" value="Write" onclick="location.href=''">
									</td>
								</tr>
							</table>
						</td>
					</tr>
			</table>
		</table>
	</center>
	<%@ include file="../include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
	
</body>
</html>