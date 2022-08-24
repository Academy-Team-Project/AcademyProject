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
			<table width="70%" height="800px" cellspacing="0" border="0" cellpadding="10" class="board_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
						<h2>오 시 는 길</h2> <br>
						<img alt="" src="${pageContext.request.contextPath }/resources/images/academy_map.jpg" class="academy_map">
						<table width="35%" cellspacing="0" border="0" cellpadding="10" class="transportation">
							<tr>
								<td rowspan="4" class="line">
								버스
								</td>
							</tr>
							<tr>	
								<td class="line">
									시내버스: 45,42,754
								</td>
							</tr>
							<tr>	
								<td class="line">
									마을버스 : 534, 566 (시청광장 입구 하차)<br>
									536, 537, 566, 534 (길병원 하차)
								</td>
							</tr>
							<tr>	
								<td class="line">
									좌석버스 : 103, 111-2 (길병원 하차)
								</td>
							</tr>
							<tr>
								<td class="line">지하철
								</td>
								<td class="line">인천 지하철 1호선 : 예술회관역 3번 출구 도보 3분
								</td>
							</tr>
						</table>
					</td>
				</tr>
				
			</table>
		</table>
	</center>
	<%@ include file="include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
	
</body>
</html>