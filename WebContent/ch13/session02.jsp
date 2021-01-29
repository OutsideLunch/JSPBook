<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userId = (String)session.getAttribute("userID");
		String userPw = (String)session.getAttribute("userPW");
		
		out.println("설정된 세션의 속성 값 [1] : " + userId + "<br>");
		out.println("설정된 세션의 속성 값 [2] : " + userPw + "<br>");
	%>
	
	<br>
	<a href="./session01.jsp">처음으로</a><br>
	<a href="./session02.jsp">session02 로 이동</a>
</body>
</html>