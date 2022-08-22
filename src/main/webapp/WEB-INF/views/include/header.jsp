<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/backstyle.css">
<meta charset="UTF-8">
<title>Header</title>
</head>
<body>

	<table width="100%" cellspacing="0" border="0" cellpadding="0">
	<!-- 상단 정보 -->
		<tr height="80" class="header_top">
			<td width="80%">
				<img alt="" src="${pageContext.request.contextPath }/resources/images/ABC_logo.jpg" class="header_logo">
			</td>
			<td width="15%" align="right">
				님 환영합니다
			</td>
			<td width="5%" class="btn_logout">
				<button type="button" class="btn-hover color" onclick="location.href='/logout'">logout</button>
			</td>	
		</tr>
	<!-- 상단 정보 종료 -->	
	<!-- 하단 여백 -->
		<tr height="20" class="header_bottom">
			<td colspan="3">
				&nbsp;
			</td>
		</tr>
	<!-- 하단 여백 종료 -->
	</table>

</body>
</html>