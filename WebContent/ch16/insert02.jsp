<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insert02_process.jsp" method="post">
		<label for="userName">이름</label>
		<input type="text" id="userName" name="userName"><br>
		<label for="userPw">비밀번호</label>
		<input type="password" id="userPw" name="userPw"><br>
		<button type="submit">전송</button>
	</form>
</body>
</html>