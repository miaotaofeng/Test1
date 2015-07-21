<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miao?useUnicode=true&characterEncoding=UTF-8","root","123");
		PreparedStatement ps = conn.prepareStatement("select * from user");
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			int userId = rs.getInt(1);
			String userName = rs.getString(2);
	%>
	<%= userId%>------<%=userName%>
	<%
		}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	} 
	%>
</body>
</html>