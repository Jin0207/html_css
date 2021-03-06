<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.GoodsDAO"%>
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
		GoodsDAO dao = new GoodsDAO();
		ArrayList<GoodsVO> list = dao.listGoods();
	%>
	<h2>상품목록</h2>
	<hr>
	<table border="1" width="80%">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
			<th>가격</th>
			<th>수량</th>
			<th>이미지</th>
		</tr>
		<%
			for(GoodsVO v : list){
		%>
			<tr>
				<td><%= v.getNo()%></td>
				<td><%= v.getName()%></td>
				<td><%= v.getPrice()%></td>
				<td><%= v.getQty()%></td>
				<td><img src="images/<%=v.getFname()%>" width="80" height="80"></td>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>