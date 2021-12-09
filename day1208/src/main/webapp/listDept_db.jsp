
<%@page import="com.sist.dao.DeptDAO"%>
<%@page import="com.sist.vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<%
	DeptDAO dao = new DeptDAO();
	ArrayList<DeptVO> list = dao.listDeot();
%>
	<div class="container">
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>부서번호</th>
					<th>부서명</th>
					<th>부서위치</th>
				</tr>
			</thead>
			<tbody>
				<%
					for(DeptVO v : list){
				%>
					<tr>
						<td><%= v.getDno() %></td>
						<td><%= v.getDname() %></td>
						<td><%= v.getDloc() %></td>
					</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>