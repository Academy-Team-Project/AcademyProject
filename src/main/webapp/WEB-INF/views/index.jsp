<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/index.css">
<meta charset="UTF-8">
<title>ABC Academy Login</title>
</head>
<body>

<div class="container">
  <div class="screen">
    <div class="screen_content">
      <img alt="" src="${pageContext.request.contextPath }/resources/images/ABC_logo.jpg" class="index_img">
      
      <form action="notice/notice_list" method="post" name="login_form" class="login" align="center">
        <div class="login_field">
          <h4>
	          <input class="radio" type="radio" name="memberType"> 학생 
			  <input class="radio" type="radio" name="memberType"> 교사 
			  <input class="radio" type="radio" name="memberType"> 직원
		  </h4>
		  <br><br>        
          <input type="text" class="login_input" placeholder="User ID" >
        </div>
        <div class="login_field">    
          <input type="password" class="login_input" placeholder="Password">
        </div>
       
        <button type="submit" class="button login_submit" onclick="loginCheck()">
          <span class="button_text">Log In Now</span> 
        </button>
        <button type="button" class="button non_member" onclick="location.href='/nonmember_enter'">
          <span class="button_text">비회원 로그인</span> 
        </button>       
      </form>
      
      <div class="forgot_login">
      <br><br>
        <h5>Forgot your password?</h5>
        <div class="lost_login">
          <a href="#" class="lost_login_password">here</a>
        </div>
      </div>
    </div>
    <div class="screen_background">
      <span class="screen_background_shape screen_background_shape4"></span>
      <span class="screen_background_shape screen_background_shape3"></span>    
      <span class="screen_background_shape screen_background_shape2"></span>
      <span class="screen_background_shape screen_background_shape1"></span>
    </div>    
  </div>
</div>



<!-- 
	<br>
	<br>
	<br>
	<br>
	<br>
	<center>
		<table width="60%" cellspacing="10" border="0" cellpadding="10" class="index_box">
			<tr>
				<td align="center">
					<span class="index_title01">Academy Login</span>
				</td>				
			</tr>
			
			<tr>
				<table width="60%" cellspacing="0" border="0" cellpadding="10" class="login_box">
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
 -->	
</body>
</html>