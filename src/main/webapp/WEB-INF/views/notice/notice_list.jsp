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
		<table width="80%" cellspacing="0" border="0" cellpadding="10" class="board_main_title">
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
			<table width="80%" height="80%" cellspacing="0" border="0" cellpadding="10" class="board_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
					<br><br>
						<h2>공 지 사 항</h2> <br><br>
						<form action="board_list">
							<div class="search" align="right">
						        <select name="searchOption">
						            <option value="title">제목</option>
						            <option value="content">내용</option>
						            <option value="name">글쓴이</option>
								</select> 
								<input type="text" name="searchKeyword">
								<input class="button" type="button" value="Search" onclick="location.href=''">
							</div>
					    </form>
							<table width="85%" height="70%" border="1" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<thead>
									<tr>
										<th class="board_title">No</th>
										<th class="board_title" width="70%">TITLE</th>
										<th class="board_title">NAME</th>
										<th class="board_title">조회수</th>
										<th class="board_title" width="10%">DATE</th>
									</tr>
								</thead>
								
								<tbody>
									<tr>
										<td class="board_content">1</td>
										<td class="board_content" width="70%">
											<a href="#" style="color: #000000;">멍멍</a>
										</td>
										<td class="board_content">강아지</td>
										<td class="board_content">0</td>
										<td class="board_content" width="10%">DATE</td>
									</tr>
									
									<tr>
										<td class="board_content">2</td>
										<td class="board_content" width="70%">
											<a href="#" style="color: #000000;">야옹</a>
										</td>
										<td class="board_content">고양이</td>
										<td class="board_content">0</td>
										<td class="board_content" width="10%">DATE</td>
									</tr>
									
									<tr>
										<td class="board_content">3</td>
										<td class="board_content" width="70%">
											<a href="#" style="color: #000000;">삐약</a>
										</td>
										<td class="board_content">병아리</td>
										<td class="board_content">0</td>
										<td class="board_content" width="10%">DATE</td>
									</tr>
									
									<tr>
										<td class="board_content">4</td>
										<td class="board_content" width="70%">
											<a href="#" style="color: #000000;">꽤액</a>
										</td>
										<td class="board_content">오리</td>
										<td class="board_content">0</td>
										<td class="board_content" width="10%">DATE</td>
									</tr>
								</tbody>
								
							</table>
							<div align="right" class="board_inputbox">	
								 <input class="button" type="button" value="등록" onclick="location.href='/notice/notice_write'">
								<input class="button" type="button" value="수정" onclick="location.href=''">
								<input class="button" type="button" value="삭제" onclick="location.href=''">
							</div>
						</td>
					</tr>
			</table>
		</table>
	</center>
	<%@ include file="../include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
	
</body>
</html>