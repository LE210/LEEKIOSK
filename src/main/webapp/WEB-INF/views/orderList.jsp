<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="boot.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<meta http-equiv='refresh' content='10;'>
<title>Insert title here</title>
</head>
<body>
	<h1>Order</h1>
	<hr>
	<table border="1" style="text-align: center;" class="table table-hover">
		<thead class="thead-dark">
			<tr>
				<th>오더넘버</th>
				<th>상품번호</th>
				<th>샷 추가</th>
				<th>아이스,핫</th>
				<th>휘핑</th>
				<th>사이즈</th>
				<th>수량</th>
				<th>매장/포장</th>
				<th>날짜</th>
				<th>삭제</th>
			</tr>
		</thead>
		<c:forEach var="orderList" items="${orderList }">
			<tr>
				<td>${orderList.o_num }</td>
				<td>${orderList.p_num }</td>
				<td>${orderList.p_name }</td>
				<td>${orderList.o_shot }</td>
				<td>${orderList.o_whipping }</td>
				<td>${orderList.o_size }</td>
				<td>${orderList.o_quantity }</td>
				<td>${orderList.o_pickup }</td>
				<td>${orderList.reg_day }</td>
				<td><button class="btn btn-danger" onclick="location.href='orderDelete?num=${orderList.o_num }'">삭제</button> </td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>