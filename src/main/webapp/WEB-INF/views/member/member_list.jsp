<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/backstyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/board.css">
<meta charset="UTF-8">
<title>Member List</title>
</head>
<body>

	<%@ include file="../include/header.jsp" %>	<!-- header.jsp를 붙임 -->
	<%@ include file="../include/navigation.jsp" %>	<!-- navigation.jsp를 붙임 -->
	<center>
		<!-- 외부 테이블 -->
		<table width="70%" cellspacing="0" border="0" cellpadding="10" class="member_main_title">
			<tr>
				<td align="center">
					<span class="member_main_title01"></span>
				</td>
			</tr>
			<tr>
				<td align="center">
					<span class="member_main_title02"></span>
				</td>
			</tr>
			<!-- 내부 테이블 -->
			<table width="70%" height="650" cellspacing="0" border="0" cellpadding="10" class="member_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
						<h2>회 원 관 리</h2> <br><br>
						<form action="member_list">
							<div class="search" align="right">
						        <select name="searchOption">
						            <option value="title">회원구분</option>
						            <option value="content">이름</option>
								</select> 
								<input type="text" name="searchKeyword">
								<input class="button" type="button" value="Search" onclick="location.href=''">
							</div>
					    </form>
							<table width="85%" height="70%" border="1" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<thead>
									<tr>
										<th class="member_title">고객번호</th>
										<th class="member_title" width="20%">고객아이디</th>
										<th class="member_title" width="20%">이름</th>
										<th class="member_title">회원구분</th>
										<th class="member_title" width="20%">연락처</th>
										<th class="member_title">가입일</th>
									</tr>
								</thead>
								
								<tbody>
									<tr>
										<td class="member_content" align="center">6</td>
										<td class="member_content" align="center">30000001</td>
										<td class="member_content">
											<a href="#" style="color: #000000;">준수</a>
										</td>
										<td class="lesson_content">직원</td>
										<td class="lesson_content">010-0000-0000</td>
										<td class="lesson_content">2022-08-24</td>
									</tr>
									
									<tr>
										<td class="member_content" align="center">5</td>
										<td class="member_content" align="center">10000001</td>
										<td class="member_content">
											<a href="#" style="color: #000000;">닉쿤</a>
										</td>
										<td class="lesson_content">학생</td>
										<td class="lesson_content">010-0000-0000</td>
										<td class="lesson_content">2022-08-24</td>
									</tr>
									
									<tr>
										<td class="member_content" align="center">4</td>
										<td class="member_content" align="center">20000001</td>
										<td class="member_content">
											<a href="#" style="color: #000000;">택연</a>
										</td>
										<td class="lesson_content">교사</td>
										<td class="lesson_content">010-0000-0000</td>
										<td class="lesson_content">2022-08-24</td>
									</tr>
									
									<tr>
										<td class="member_content" align="center">3</td>
										<td class="member_content" align="center">10000002</td>
										<td class="member_content">
											<a href="#" style="color: #000000;">우영</a>
										</td>
										<td class="lesson_content">학생</td>
										<td class="lesson_content">010-0000-0000</td>
										<td class="lesson_content">2022-08-24</td>
									</tr>
									
									<tr>
										<td class="member_content" align="center">2</td>
										<td class="member_content" align="center">10000003</td>
										<td class="member_content">
											<a href="#" style="color: #000000;">준호</a>
										</td>
										<td class="lesson_content">학생</td>
										<td class="lesson_content">010-0000-0000</td>
										<td class="lesson_content">2022-08-24</td>
									</tr>
									
									<tr>
										<td class="member_content" align="center">1</td>
										<td class="member_content" align="center">20000002</td>
										<td class="member_content">
											<a href="#" style="color: #000000;">찬성</a>
										</td>
										<td class="lesson_content">교사</td>
										<td class="lesson_content">010-0000-0000</td>
										<td class="lesson_content">2022-08-24</td>
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