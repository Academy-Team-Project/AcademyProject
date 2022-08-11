<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/index.css">
<meta charset="UTF-8">
<title>Academy Login</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<center>
		<table width="60%" cellspacing="10" border="0" cellpadding="10">
			<tr>
				<td align="center">
					<span class="index_title01">Academy Login</span>
				</td>				
			</tr>
			
			<tr>
				<table width="60%" cellspacing="0" border="0" cellpadding="10">
					<form action="loginOk" method="post" name="login_form">
						<tr>
							<td colspan="2" align="center">
								<input class="radio" type="radio" name="memberType">학생
								<input class="radio" type="radio" name="memberType">교사
								<input class="radio" type="radio" name="memberType">직원
							</td>
						</tr>
						<tr>
							<td name="index_label01" align="right">ID : </td>
							<td><input type="text" name="memberId" class="input_Box"></td>
						<tr>	
						<tr>
							<td name="index_label01" align="right">PASSWORD : </td>
							<td><input type="password" name="memberPw" class="input_Box"></td>
						<tr>	
						<tr>
							<td colspan="2" align="center"><br>
								<input class="button" type="button" value="LOGIN" onclick="loginCheck()">&nbsp;&nbsp;&nbsp;
	                            <input class="button" type="button" value="SIGNUP" onclick="location.href='join'">
							</td>
						<tr>
						
					</form>	
				</table>
			</tr>
		</table>
	</center>
</body>
</html>