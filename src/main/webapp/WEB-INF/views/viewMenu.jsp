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
	<div class="container">
		<form action="modifyMenu" enctype="multipart/form-data" method="post">
			<fieldset>
				<legend>상품 상세보기 / 수정</legend>
				<table class="table table-hover">
					<thead class="thead-dark">
						<tr>
							<th>상품번호</th>
							<td><input type="text" name="num" value="${viewMenu.p_num }"
								readonly="readonly"></td>
						</tr>
						<tr>
							<th>상품명</th>
							<td><input type="text" name="name"
								value="${viewMenu.p_name }"></td>
						</tr>
						<tr>
							<th>현재카테고리</th>
							<td><b style="color: red;"> 현재 카테고리 ::
									${viewMenu.p_category }</b></td>
						</tr>
						<tr>
							<th>수정할 카테고리</th>
							<td><select name="category">
									<option value="Coffee" selected>coffee</option>
									<option value="Tea">tea</option>
									<option value="Dessert">dessert</option>
									<option value="Other">other</option>
							</select></td>
						</tr>
						<tr>
							<th>가격</th>
							<td><input type="text" name="price"
								value="${viewMenu.p_price }"></td>
						</tr>
						<tr>
							<th>상품이미지</th>
							<td><input type="file" name="image"><img alt=""
								src="resources/img/${viewMenu.p_image }"
								style="width: 100px; height: 100px;"></td>
						</tr>
						<tr>
							<th>품절이미지</th>
							<td><input type="file" name="image2"><img alt=""
								src="resources/img/${viewMenu.p_image2 }"
								style="width: 100px; height: 100px;"></td>
						</tr>
						<tr>
							<th>현재품절유무 (0품절/1아님)</th>
							<td><b style="color: red;"> 현재 품절 유무 ::
									${viewMenu.p_soldOut }</b></td>
						</tr>
						<tr>
							<th>품절 유무</th>
							<td><input type="radio" name="soldOut" value="0" checked="checked">품절
								<input type="radio" name="soldOut" value="1">품절아님</td>
						</tr>
						<tr>
							<th></th>
							<td>
								<button type="button" class="btn btn-secondary"
									onclick="location.href='menuList'">목록으로</button>
								<button type="reset" class="btn btn-primary">새로작성</button>
								<button type="submit" class="btn btn-success"
									>상품등록</button>

							</td>
						</tr>
					</thead>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>