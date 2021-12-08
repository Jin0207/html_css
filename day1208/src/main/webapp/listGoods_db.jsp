<%@page import="com.sist.dao.GoodsDAO"%>
<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	
	.container{
		width: 100%;
	}
	h2{
			width: 100%;
			text-align: center;
	}
	.card{
		margin-bottom: 15px;
		width: 100%;
	}
	
	@media screen and (min-width:768px){
		
		.container{
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
			align-items: center;
		}
		.card{
			width: 49%;
		}
	}
	@media screen and (min-width: 992px){
		.card{
			width: 33%;
		}
	}
</style>
<title>Insert title here</title>
</head>
<body>
<%
	GoodsDAO dao = new GoodsDAO();
	ArrayList<GoodsVO> list = dao.listGoods();
%>
<div class="container">
			<h2>상품목록</h2>
			<%
			for(GoodsVO v : list){
				%>
				<div class="card">
				<img class="card-img-top" style="width: 100%" src="images/<%=v.getFname()%>">
				<div class="card-body">
					<h4 class="card-title"><%=v.getName() %></h4>
					<p class="card-text">상품번호: <%=v.getNo() %><br>
					가격: <%= v.getPrice() %><br>
					수량: <%= v.getQty()%></p>
					<a class="btn btn-primary" href="$">상품 구매</a>
					</div>
				</div>
				<%
			}
		%>
	</div>
</body>
</html>