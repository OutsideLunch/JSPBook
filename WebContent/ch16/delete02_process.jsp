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
		String passwd = request.getParameter("passwd");
		
		PreparedStatement pmt = null;
		
		try {
			String query = "delete from member ";
			query += "where id = ? and passwd = ?";
			pmt = conn.prepareStatement(query);
			pmt.setString(1, id);
			pmt.setString(2, passwd);
			
			int result = pmt.executeUpdate();
			out.println("member 테이블의 " + result + "개를 삭제하였습니다.");
		}
		catch (SQLException e) {
			out.println("member 테이블의 데이터 삭제를 실패했습니다.<br>");
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