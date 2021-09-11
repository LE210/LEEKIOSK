<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<h1 class="display-4">userList</h1>
<!-- 	<input type="button" value="관리자 홈으로"
		onclick="location.href='adminMain'"> -->
	<input type="button" class="btn btn-secondary" value="회원 추가" onclick="location.href='signUpView'">
	<!-- <input type="button" value="모르겠여ㅓ요" onclick="location.href='#'"> -->
	<hr>
	<table border="1" style="text-align: center;" class="table table-hover">
		<thead class="thead-dark">
			<tr>
				<th>순서</th>
				<th>아이디</th>
				<th>이름</th>
				<th>연락처</th>
				<th>포인트</th>
				<th>멤버쉽번호</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<c:forEach var="dto" items="${userList }">
			<tr>
				<td>${dto.u_num }</td>
				<td>${dto.u_id }</td>
				<td>${dto.u_name }</td>
				<td>${dto.u_phone }</td>
				<td>${dto.sumPoint }</td>
				<td>${dto.unique_num }</td>
				<td><input type="button" class="btn btn-warning btn-block" value="상세보기/수정"
					onclick="location.href='userView?num=${dto.u_num}'"></td>
				<td><input type="button" class="btn btn-danger btn-block" value="삭제"
					onclick="location.href='userDelete?num=${dto.u_num }'"></td>
			</tr>
		</c:forEach>
	</table>
	<%-- <table border="1" style="text-align: center;">
		<tr>
			<th>순서</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>이메일</th>
			<th>포인트</th>
			<th>주소</th>
			<th>연락처</th>
			<th>멤버쉽번호</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	<c:forEach var="dto" items="${userList }">
		<tr>
			<td>${dto.u_num }</td>
			<td>${dto.u_id }</td>
			<td>${dto.u_pw }</td>
			<td>${dto.u_name }</td>
			<td>${dto.u_birth }</td>
			<td>${dto.u_email }</td>
			<td>${dto.sumPoint }</td>
			<td>${dto.u_address }</td>
			<td>${dto.u_phone }</td>
			<td>${dto.unique_num }</td>
			<td><a href="userView?num=${dto.u_num }">수정</a></td>
			<td><a href="userDelete?num=${dto.u_num }">삭제</a></td>
		</tr>		
	</c:forEach>
</table> --%>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
		integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
		crossorigin="anonymous"></script>
</body>
</html>