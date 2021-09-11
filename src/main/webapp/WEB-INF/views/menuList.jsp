<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="boot.jsp" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Menu</h1>
<!-- <input type="button" value="관리자 홈으로 이동" onclick="location.href='adminMain'"> -->
<button type="button" class="btn btn-secondary" onclick="location.href='menuInsertView'">메뉴추가</button>
<hr>
	<table border="1" style="text-align: center;" class="table table-hover">
	<thead class="thead-dark">
		<tr>
			<th>메뉴번호</th>
			<th>메뉴이름</th>
			<th>메뉴카테고리</th>
			<th>메뉴가격</th>
			<th>메뉴이미지</th>
			<th>메뉴품절이미지</th>
			<th>메뉴품절번호</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		</thead>
		<c:forEach var="menuList" items="${menuList }">
		<tr>
			<td>${menuList.p_num }</td>
			<td>${menuList.p_name }</td>
			<td>${menuList.p_category }</td>
			<td>${menuList.p_price }</td>
			<td><img style="width: 100px; height: 100px;" alt="${menuList.p_image }" src="resources/images/menu_pic/${menuList.p_image }"></td>
			<td><img style="width: 100px; height: 100px;" alt="${menuList.p_image2 }" src="resources/images/menu_pic/${menuList.p_image2 }"></td>
			<td>${menuList.p_soldOut }</td>
			<td><input type="button" class="btn btn-warning btn-block" value="상세보기/수정" onclick="location.href='viewMenu?num=${menuList.p_num}'" style="height: 100%; width: 100%;"> </td>
			<td><input type="button" class="btn btn-danger btn-block" value="삭제" onclick="location.href='deleteMenu?num=${menuList.p_num}'"> </td>
		</tr>
		</c:forEach>

	</table>
	
</body>
</html>