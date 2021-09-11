<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="boot.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form action="insertMenu" enctype="multipart/form-data" method="post">
			<fieldset>
				<legend>상품 추가</legend>
				<table class="table table-hover">
					<thead class="thead-dark">
						<tr>
							<th>상품명</th>
							<td><input type="text" name="name" required></td>
						</tr>
						<tr>
							<th>카테고리</th>
							<td><select name="category">
									<option value="Coffee" selected>coffee</option>
									<option value="Tea">tea</option>
									<option value="Dessert">dessert</option>
									<option value="Other">other</option>
							</select></td>
						</tr>
						<tr>
							<th>가격</th>
							<td><input type="text" name="price" required></td>
						</tr>
						<tr>
							<th>상품이미지</th>
							<td><input type="file" name="image" required></td>
						</tr>
						<tr>
							<th>품절이미지</th>
							<td><input type="file" name="image2" required></td>
						</tr>
						<tr>
							<th>품절유무</th>
							<td><input type="radio" name="soldOut" value="0">품절
								<input type="radio" name="soldOut" value="1" checked="checked">품절아님</td>
						</tr>
						<tr>
							<th></th>
							<td>
								<button type="button" class="btn btn-secondary" onclick="location.href='menuList'">메뉴 목록</button>
								<button type="reset" class="btn btn-primary">새로 작성</button>
								<button type="submit" class="btn btn-success">상품 등록</button>
							</td>
						</tr>
					</thead>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>