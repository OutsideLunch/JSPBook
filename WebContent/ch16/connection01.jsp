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
	<%
		/* 데이터 베이스 연결 객체 */
		Connection conn = null;
	
		try {
			/* 데이터 베이스 접속 주소 */
			/* jdbc : 데이터 베이스 접속 드라이버 종류 */
			/* mysql : 데이터 베이스 종류 */
			/* localhost : 데이터 베이스 접속 주소(ip번호, url) */
			/* 3306 : 데이터 베이스 접속 포트 */
			/* employees : 사용할 데이터 베이스 이름 */
			/* serverTimezone : 서버 시간 지역 구분 */
			/* characterEncoding : 문자셋 */
			String url = "jdbc:mysql://localhost:3306/employees?serverTimezone=UTC";
			String userId = "springb";
			String userPw = "asdf1234";
			
			/* jdbc 드라이브 클래스 확인 */
			Class.forName("com.mysql.cj.jdbc.Driver");
			/* getConnetion() 메서드가 실제 데이터 베이스와 연결을 진행함 */
			conn = DriverManager.getConnection(url, userId, userPw);
			out.println("데이터 베이스에 연결이 성공했습니다.");
		}
		catch (SQLException ex) {
			out.println("데이터 베이스에 연결이 실패했습니다.");
			out.println("SQLException : " + ex.getMessage());
		}
		finally {
			/* 데이터베이스 접속은 가비지 컬렉터가 자동으로 메모리 회수를 할 수 없기 때문에
			finally를 이용해서 connect를 닫아줘야 함 */
			if (conn != null) {
				conn.close();
			}
		}
	%>
</body>
</html>