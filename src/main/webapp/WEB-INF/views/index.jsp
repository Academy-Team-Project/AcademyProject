<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/index.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/memberLogin.js"></script>
<meta charset="UTF-8">
<title>ABC Academy</title>
</head>
<body>

<div class="container">
  <div class="screen">
    <div class="screen_content">
      <img alt="" src="${pageContext.request.contextPath }/resources/images/ABC_logo.jpg" class="index_img">
      
      <form action="memberLoginOk" method="post" name="member_login_form" class="login" align="center">
        <div class="login_field">
          <h4>
	          <input class="radio" type="radio" name="membertype" value="학생"> 학생 
			  <input class="radio" type="radio" name="membertype" value="교사"> 교사 
			  <input class="radio" type="radio" name="membertype" value="직원"> 직원
		  </h4>
		  <br><br>        
          <input type="text" class="login_input" placeholder="User ID" name="memberid" >
        </div>
        <div class="login_field">    
          <input type="password" class="login_input" placeholder="Password" name="memberpw">
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

</body>
</html>