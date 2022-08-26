<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   <!-- 보여지는 글자수 제한을 위한 기능이 포함되어있음 --> 
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
					
						<c:choose>
							
							<c:when test="${memberidCheck == '0' }"> 
								<script type="text/javascript">			// 첫번째 조건 
									alert("입력하신 아이디는 존재하지 않는 아이디 입니다.\n다시 확인해주세요.");
									history.go(-1); 
								</script>
							</c:when>
							
							<c:when test="${memberidtypeCheck == '0' }">	
								<script type="text/javascript">		// 두번째 조건 
									alert("입력하신 회원타입과 아이디가 일치하지 않습니다.\n다시 확인해주세요.");
									history.go(-1);
								</script>
							</c:when>
							
							<c:when test="${memberidtypepwCheck == '0' }">	
								<script type="text/javascript">		// 세번째 조건 
									alert("입력하신 정보가 맞지 않습니다.\n다시 확인해주세요.");
									history.go(-1);
								</script>
							</c:when>
					
							<c:otherwise>
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
											<!-- 반복문 var은 글 하나당 붙일 이름 -->
											<c:forEach items="${noticelist }" var="dto">
												<tr>
													<td class="board_content" align="center">${dto.noticenum }</td>
													<td class="board_content" width="60%">
														<a href="notice/notice_view?noticenum=${dto.noticenum }" style="color: #000000; text-align: left;">
															<c:choose>
																<c:when test="${fn:length(dto.noticetitle) > 35}">
																	<c:out value="${fn:substring(dto.noticetitle, 0, 35) }"></c:out>...
																</c:when>
																<c:otherwise>
																	<c:out value="${dto.noticetitle }"></c:out>
																</c:otherwise>											
															</c:choose>
														</a>
													</td>
													<td class="board_content" align="center">${dto.membername }</td>
													<td class="board_content" align="center">${dto.noticehit }</td>
													<td class="board_content" width="10%" align="center">
														<c:out value="${fn:substring(dto.noticedate, 0, 10) }"></c:out>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									
									<div align="right" class="board_inputbox">	
										<%
											String sessiontype = (String) session.getAttribute("sessionType");
											if (sessiontype.equals("직원")) {
										%>
											 <input class="button" type="button" value="등록" onclick="location.href='/notice/notice_write'">
										<%
											}
										%>
									</div>
							
								</c:otherwise>
							
							</c:choose>
														
						</td>
					</tr>
			</table>
		</table>
	</center>
	<%@ include file="../include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
	
</body>
</html>