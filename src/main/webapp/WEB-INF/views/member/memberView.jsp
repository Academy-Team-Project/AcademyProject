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
						<h2>회원 상세정보</h2> <br><br>
							<table width="85%" height="70%" border="0" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<form action="memberModifyOk" name="member_modify_form"  method="post">
									
									<tr>
										<th class="member_title" width="20%" align="left"> 회원구분 : </th>
										<td class="">${memberDto.membertype }</td>
									</tr>
								
									<tr>
										<th class="member_title" width="20%" align="left">ID : </th>
										<td class=""> ${memberDto.memberid }	</td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">이름 : </th>
										<td class=""> ${memberDto.membername } </td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">비밀번호 : </th>
										<td class=""> ${memberDto.memberpw } </td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">생년월일 : </th>
										<td class="">
											<c:out value="${fn:substring(memberDto.memberbirth, 0, 10) }"></c:out>
										</td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">휴대전화 : </th>
										<td> ${memberDto.membertel } </td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left" >이메일 : </th>
										<td> ${memberDto.memberemail } </td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">주소 : </th>
										<td> ${memberDto.memberaddress } </td>
									</tr>
									<tr>
										<th class="member_title"  width="20%" align="left">가입일 : </th>
										<td> 
											<c:out value="${fn:substring(memberDto.enrolldate, 0, 10) }"></c:out>
										</td>
									</tr>
									<tr>
										<td colspan="6" align="right">
											<input class="button" type="button" value="수정" onclick="location.href='/member/memberModify'">&nbsp;&nbsp; 
											<input class="button" type="button" value="목록" onclick="location.href='/member/member_list'">&nbsp;&nbsp;
											<input class="button" type="button" value="삭제" onclick="#">
										</td>
									</tr>
								</form>
							</table>
						</td>
					</tr>
			</table>
		</table>
	</center>
	<%@ include file="../include/footer.jsp" %>   <!-- footer.jsp를 붙임 -->
</body>
</html>