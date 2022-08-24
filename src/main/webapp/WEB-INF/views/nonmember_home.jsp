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

	<%@ include file="include/header.jsp" %>	<!-- header.jsp를 붙임 -->
	<%@ include file="include/navigation.jsp" %>	<!-- navigation.jsp를 붙임 -->
	<center>
		<!-- 외부 테이블 -->
		<table width="70%" cellspacing="0" border="0" cellpadding="10" class="board_main_title">
			<tr>
				<td align="center">
					<span class="board_main_title01"></span>
				</td>
			</tr>
			<tr>
				<td align="center">
					<span class="board_main_title02"></span>
				</td>
			</tr>
			<!-- 내부 테이블 -->
			<table width="70%" height="650" cellspacing="0" border="0" cellpadding="10" class="board_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
						<h2>Guest로 로그인 하셨습니다.</h2> <br><br>
						<h2>문의사항은 학원 연락처(032-123-4567)로 문의주세요.</h2>
					</td>		
				</tr>
			</table>
		</table>
	</center>
	<%@ include file="include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
	
</body>
</html>