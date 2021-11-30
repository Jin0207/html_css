<%@page import="java.util.ArrayList"%>
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
		ArrayList<String> list = new ArrayList<String>();
		list.add("images/ball1.jpg");
		list.add("images/ball2.jpg");
		list.add("images/ball3.jpg");
		list.add("images/ball4.jpg");
		list.add("images/ball5.jpg");
		
		for(String image : list){
			%>
			<img src="<%=image%>">
			<%
		}
	%>
</body>
</html>