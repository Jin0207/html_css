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
	String data = "안녕하세요.<br> 잘지내요.<br> 다시만나요.";
	String data2 = "/n2.안녕하세요./n 잘지내요./n 다시만나요.";
	data2 = data2.replace("/n", "<br>");
%>
<%= data %>
<%= data2 %>
</body>
</html>