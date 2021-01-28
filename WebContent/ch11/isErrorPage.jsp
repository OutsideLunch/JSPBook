<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="isErrorPage_error.jsp" %>
<!-- isErrorPage 속성을 true로 설정하여 Exception 클래스를 사용할 수 있도록 함 -->
<!-- isErrorPage 속성은 다른 문서에서 errorPage로 설정된 파일에서 디렉티브 태그를 사용하여 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		name = name.toUpperCase();
	%>
	<p>name 파라미터 : <%= name %></p>
</body>
</html>