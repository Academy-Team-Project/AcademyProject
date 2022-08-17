<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice</title>
</head>
<body>
	<!-- 외부 테이블 -->
	<table width="70%" cellspacing="0" border="0" cellpadding="20">
		<tr>
			<td align="center">
				<span class="notice_title01">????</span>
			</td>
		</tr>
		<tr>
			<td align="center">
				<span class="notice_title02">?????????</span>
			</td>
		</tr>
		<!-- 내부 테이블 -->
		<table width="65%" cellspacing="0" border="0" cellpadding="10"> 
			<tr>
				<td bgcolor="#FFFFE0" align="center">  
					<span class="content_title"> QUESTION BOARD </span> <br><br>
						<table width="85%" border="0" cellspacing="0" cellpadding="10"> <!-- width 값으로 크기 고정 -->
							<tr>
								<td class="board_title">No</td>
								<td class="board_title">ID</td>
								<td class="board_title" width="50%">QUESTION</td>
								<td class="board_title">NAME</td>
								<td class="board_title">DATE</td>
							</tr>
							
							<!-- 반복문 var은 글 하나당 붙일 이름 -->
							<c:forEach items="${list }" var="dto">
								<tr> 
									<td  class="board_content">${dto.qnum }</td>
									<td class="board_content">${dto.qid }</td>
									<td class="board_content" style="text-align: left;">
										<a href="qView?qnum=${dto.qnum }" style="color: #808080;">
											<c:choose>
												<c:when test="${fn:length(dto.qcontent) > 25}">
													<c:out value="${fn:substring(dto.qcontent, 0, 25) }"></c:out>...
												</c:when>
												<c:otherwise>
													<c:out value="${dto.qcontent }"></c:out>
												</c:otherwise>											
											</c:choose>
										</a>
									</td>
									<td class="board_content">${dto.qname }</td>
									<td class="board_content">
										<c:out value="${fn:substring(dto.qdate, 0, 16) }"></c:out>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="5" align="right">
									<input class="button" type="button" value="Write" onclick="location.href='question'">
								</td>
							</tr>
						</table>
					</td>
				</tr>
		</table>
	</table>
</body>
</html>