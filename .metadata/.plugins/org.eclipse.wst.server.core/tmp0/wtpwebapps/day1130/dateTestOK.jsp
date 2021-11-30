<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String birthDate = request.getParameter("birthDate");
	String hireDate = request.getParameter("hireDate");
%>
생일은 <%=birthDate %><br>
입사일은 <%= hireDate %>
</body>
</html>