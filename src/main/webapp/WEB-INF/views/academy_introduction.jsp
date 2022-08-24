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
						<h1>학 원 소 개</h1> <br><br>
							<p>ABC Academy는</p>
							<p>진실한 사랑과 참된 교육으로</p>
							<p>여러분의 징검다리가 되겠습니다.</p>
							<p>도전합시다.</p>
							<p>인간의 잠재력은 무한합니다.</p><br>
							<h5>ABC Academy 이지은 원장</h5>
					</td>
				</tr>
			</table>
		</table>
	</center>
	<%@ include file="include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
	
</body>
</html>