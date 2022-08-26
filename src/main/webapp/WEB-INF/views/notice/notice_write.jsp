<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/backstyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/board.css">
<script type="text/javascript" src="${pagaContext.request.contextPath }/resources/js/memberJoin.js"></script>
<meta charset="UTF-8">
<title>ABC Academy</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>	<!-- header.jsp를 붙임 -->
	<%@ include file="../include/navigation.jsp" %>	<!-- navigation.jsp를 붙임 -->
	<center>
		<!-- 외부 테이블 -->
		<table width="80%" cellspacing="0" border="0" cellpadding="10" class="notice_main_title">
			<tr>
				<td align="center">
					<span class="notice_main_title01"></span>
				</td>
			</tr>
			<tr>
				<td align="center">
					<span class="notice_main_title02"></span>
				</td>
			</tr>
			<!-- 내부 테이블 -->
			<table width="80%" height="80%" cellspacing="0" border="0" cellpadding="10" class="notice_table"> 
				<tr>
					<td align="center" bgcolor="#FFFFFF">  
						<h2>공지사항 작성</h2> <br><br>
							<table width="85%" height="70%" border="0" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<form action="notice_writeOk"  method="post" name="notice_write_form">
									
									<tr>
										<td class="notice_title" width="20%" align="left">ID : </td>
										<td class="">
											<input class="input_box" type="text" name="memberid" value="${sessionId }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<td class="notice_title"  width="20%" align="left">이름 : </td>
										<td class="">
											<input class="input_box" type="text" name="membername" value="${sessionName }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<td class="notice_title"  width="20%" align="left">제목 : </td>
										<td class="">
											<input class="input_box" type="text" name="noticetitle" value="">
										</td>
									</tr>
									
									<tr>
										<td class="notice_title"  width="20%" align="left">내용 : </td>
										<td>
											<textarea class="text_area" rows="20" cols="50" name="noticecontent"></textarea>
										</td>
									</tr>
									
									<tr>
										<td colspan="2" align="right">
											<input class="button" type="button" value="등록" onclick="">
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