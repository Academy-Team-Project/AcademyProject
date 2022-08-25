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
		<table width="80%" cellspacing="0" border="0" cellpadding="10" class="member_main_title">
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
			<table width="80%" height="80%" cellspacing="0" border="0" cellpadding="10" class="member_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						
						<c:if test="${memberidCheck == '0' }">
						
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
										<th class="member_title" width="20%">고객아이디</th>
										<th class="member_title" width="20%">이름</th>
										<th class="member_title">회원구분</th>
										<th class="member_title" width="20%">연락처</th>
										<th class="member_title" width="20%">이메일</th>
										<th class="member_title">가입일</th>
									</tr>
								</thead>
								
								<tbody>						
									<c:forEach items="${memberlist }" var="memberdto">
										<tr>
											<td class="member_content">
												<a href="#" style="color: #000000;">${memberdto.memberid }</a>
											</td>
											<td class="member_content" align="center">${memberdto.membername }</td>
											<td class="member_content" align="center">${memberdto.membertype }</td>
											<td class="lesson_content">${memberdto.membertel }</td>
											<td class="lesson_content">${memberdto.memberemail }</td>
											<td class="lesson_content">${memberdto.enrolldate }</td>
										</tr>	
									</c:forEach>	
																	
								</tbody>								
							</table>
							<div align="right" class="board_inputbox">	
								<input class="button" type="button" value="등록" onclick="location.href='/member/memberJoin'">
								<input class="button" type="button" value="새로고침" onclick="location.href='/member/member_list'">
							</div>
							
							</c:if>
							<c:if test="${memberidCheck != '0' }">
								<script type="text/javascript">
									alert("입력하신 아이디는 이미 사용중입니다.\n다른 아이디를 입력하세요.");	// 경고창 띄우기
									history.go(-1);		// 이전 페이지로 돌려보내기
								</script>
							</c:if>
							
						</td>
					</tr>
			</table>
		</table>
	</center>
	<%@ include file="../include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->	
</body>
</html>