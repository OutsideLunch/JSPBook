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
		request.setCharacterEncoding("UTF-8");
		String user_Id = request.getParameter("id");
		String user_Pw = request.getParameter("pw");
		
		if (user_Id.equals("admin") && user_Pw.equals("1234")) {
			session.setAttribute("userID", user_Id);
			session.setAttribute("userPW", user_Pw);
			out.println("세선 설정이 성공했습니다.");
			out.println(user_Id + "님 환영합니다.");
		}
		else {
			out.println("세선 설정이 실패했습니다.");
		}
	%>
	<br>
	<a href="./session01.jsp">처음으로</a>
</body>
</html>