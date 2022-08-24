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
						<h2>개 인 정 보 수 정</h2> <br><br>
							<table width="85%" height="70%" border="0" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<form action="memberModifyOk" name="member_form"  method="post">
									
									<tr>
										<th class="member_title" width="20%" align="left"> 회원구분</th>
										<td class="">
											<input class="input_box" type="text" name="" value="" readonly="readonly">
										</td>
									</tr>
								
									<tr>
										<th class="member_title" width="20%" align="left">ID</th>
										<td class="">
											<input class="input_box" type="text" name="" value="" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">이름</th>
										<td class="">
											<input class="input_box" type="text" name="" value="" required="required">
										</td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">비밀번호</th>
										<td class="">
											<input class="input_box" type="password" name="" value="" placeholder="8자리 이상 입력하세요" required="required">
										</td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">비밀번호 확인</th>
										<td class="">
											<input class="input_box" type="password" name="" value="" placeholder="8자리 이상 입력하세요" required="required">
										</td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">생년월일</th>
										<td class="">
											<input class="input_box" type="date" name="" value="">
										</td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">휴대전화</th>
										<td>
											<select>
												<option>010</option>	
												<option>017</option>
												<option>018</option>
											</select> - 
											<input type="tel" size="5"> -
											<input type="tel" size="5">
										</td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left" >이메일</th>
										<td>
											<input type="email" size="30" placeholder="abc@abc.com" required="required">
										</td>
									</tr>
									
									<tr>
										<th class="member_title"  width="20%" align="left">주소</th>
										<td>
											<input type="text" size="100">
										</td>
									</tr>
									<tr>
										<td colspan="6" align="right">
											<input class="button" type="button" value="수정" onclick="modifyCheck()">
											<input class="button" type="button" value="취소" onclick="location.href='/notice/notice_list'">
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