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
	String data = "�ȳ��ϼ���.<br> ��������.<br> �ٽø�����.";
	String data2 = "/n2.�ȳ��ϼ���./n ��������./n �ٽø�����.";
	data2 = data2.replace("/n", "<br>");
%>
<%= data %>
<%= data2 %>
</body>
</html>