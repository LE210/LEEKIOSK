<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="boot.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-light bg-secondary">
		<a class="navbar-brand" href="#">회원정보수정</a>
	</nav>
	<div class="container">
		<form action="userUpdate" method="post">
			<fieldset>
				<legend>회원 정보 수정</legend>
				<table border="1" style="text-align: center;"
					class="table table-hover">
					<thead class="thead-dark">
						<tr>
							<th>번호 (수정불가)</th>
							<td><input name="num" readonly value="${userView.u_num }"></td>
						</tr>

						<tr>
							<th>아이디</th>
							<td><input name="id" value="${userView.u_id }"></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input name="pw" value="${userView.u_pw }"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input name="name" value="${userView.u_name }"></td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td><input name="birth" value="${userView.u_birth }"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input name="email" value="${userView.u_email }"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td><input name="address" value="${userView.u_address }"></td>
						</tr>
						<tr>
							<th>연락처</th>
							<td><input name="phone" value="${userView.u_phone }"></td>
						</tr>
						<tr>
							<th>포인트</th>
							<td><input name="sumPoint" value="${userView.sumPoint }"></td>
						</tr>
						<tr>
							<th>고유번호</th>
							<td><input name="unique_num" value="${userView.unique_num }"></td>
						</tr>
						<tr>
							<td colspan="2">
								<%-- <input type="submit" value="수정">
								&nbsp;&nbsp; <input type="button" value="목록으로"
								onclick="location.href='userList'"> <input type="button"
								value="삭제하기"
								onclick="location.href='userDelete?num=${userView.u_num}'"> --%>
								<button type="button" class="btn btn-secondary"
									onclick="location.href='userList'">목록으로</button>
								<button type="submit" class="btn btn-success">수정</button>
								<button type="button" class="btn btn-danger"
									onclick="location.href='userDelete?num=${userView.u_num}'">삭제</button>
							</td>
						</tr>
					</thead>
				</table>
			</fieldset>
		</form>
	</div>
	<nav class="navbar navbar-light bg-secondary">
		<a class="navbar-brand" href="#">-</a>
	</nav>
</body>
</html>