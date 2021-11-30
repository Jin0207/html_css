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
	String bloodType = request.getParameter("bloodType");
%>
	사용자의 혈액형: <%= bloodType %>형
</body>
</html>