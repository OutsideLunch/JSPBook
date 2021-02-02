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
		String name = request.getParameter("name");
		
		Statement stmt = null;
		
		try {
			String query = "INSERT INTO member";
			query += "(id, passwd, name)";
			query += "VALUES ";
			query += "('" + id + "','" + passwd + "','" + name + "')";
			/* String sql = "INSERT INTO Member(id, passwd, name) values ('" + id + "','" + passwd + "','" + name + "')"; */
			/* executeQuery : select 문 사용시 사용 
			반환값이 ResultSet 타입, 실제 데이터를 사져오기 때문에 ResultSet 타입으로 반환 */
			/* executeUpdate : updatem, delete, insert 시 사용
			반환값이 int 타입, 실행 결과가 XX행 실행 형태 이기때문에 int 타입으로 반환 */
			stmt = conn.createStatement();
			/* stmt.executeUpdate(query);
			out.println("Member 테이블 삽입이 성공했습니다."); */
			int result = stmt.executeUpdate(query);
			
			out.println("Member 테이블에서 " + query + "삽입을 성공했습니다.");
		}
		catch (SQLException e) {
			out.println("Member 테이블 삽입이 실패했습니다.");
			out.println("SQLException : " + e.getMessage());
		}
		finally {
			if (stmt != null) {
				stmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
	%>
</body>
</html>