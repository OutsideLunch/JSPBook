<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String userName = request.getParameter("name");
		
		PreparedStatement pmt = null;
		
		try {
			String query = "update member set ";
			query += "name = ? where id = ?";
			pmt = conn.prepareStatement(query);
			pmt.setString(1, userName);
			pmt.setString(2, id);
			
			int result = pmt.executeUpdate();
			out.println("member 테이블에 " + result + "개를 수정하셨습니다.");
		}
		catch (SQLException e) {
			out.println("member 테이블의 데이터 수정을 실패하셨습니다.");     
			out.println("SQLException : " + e.getMessage());
		}
		finally {
			if (pmt != null) {
				pmt.close();
			}
			
			if (conn != null) {
				conn.close();
			}
		}
	%>
</body>
</html>