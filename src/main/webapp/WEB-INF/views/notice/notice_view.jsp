<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/backstyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common/board.css">
<script type="text/javascript" src="${pagaContext.request.contextPath }/resources/js/noticeboard.js"></script>
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
						<h2>공지사항 보기</h2> <br><br>
							<table width="85%" height="70%" border="0" cellspacing="0" cellpadding="5"> <!-- width 값으로 크기 고정 -->
								<form action="notice_modify"  method="post" name="notice_write_form">
									<input type="hidden" name="noticenum" value="${noticeview.noticenum }"> <!-- 화면에는 숨긴 값 -->
									
									<tr>
										<td class="notice_title" width="20%" align="left">ID : </td>
										<td class="">
											<input class="input_box" type="text" name="memberid" size="50" value="${noticeview.memberid }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<td class="notice_title"  width="20%" align="left">이름 : </td>
										<td class="">
											<input class="input_box" type="text" name="membername" size="50" value="${noticeview.membername }" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<td class="notice_title"  width="20%" align="left">제목 : </td>
										<td class="">
											<input class="input_box" type="text" name="noticetitle" size="100" value="${noticeview.noticetitle }">
										</td>
									</tr>
									
									<tr>
										<td class="notice_title"  width="20%" align="left">내용 : </td>
										<td>
											<textarea class="text_area" rows="30" cols="150" name="noticecontent">${noticeview.noticecontent }</textarea>
										</td>
									</tr>
									
									<tr>
										<td colspan="2" align="right">
										<%
											String sessionid = (String) session.getAttribute("sessionId");
											String viewid = request.getAttribute("noticeviewId").toString();   // controller의 Model에서 넘어온 값 빼는 방법
											if (sessionid.equals(viewid) || sessionid.equals("admin")) {
										%>
											<input class="button" type="button" value="수정" onclick="noticeCheck()">&nbsp;
											<input class="button" type="button" value="삭제" onclick="location.href='/notice/noticeDelete?noticenum='+${noticeview.noticenum}">&nbsp;
										<%
											}
										%>	
											<input class="button" type="button" value="목록" onclick="location.href='/notice/notice_list'">
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