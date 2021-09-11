<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제시스템</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@import url(https://fonts.googleapis.com/css?family=Lato:300,400,900);

.container {
	height: 10%;
}

.button-wrap {
	position: relative;
	text-align: center;
	top: 50%;
	margin-top: 6%;
}

.button-label {
	display: inline-block;
	padding: 0% 7%;
	margin: 0.5em;
	cursor: pointer;
	color: #292929;
	border-radius: 0.25em;
	background: #efefef;
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2), inset 0 -3px 0
		rgba(0, 0, 0, 0.22);
	transition: 0.3s;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.button-label:hover {
	background: #d6d6d6;
	color: #101010;
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2), inset 0 -3px 0
		rgba(0, 0, 0, 0.32);
}

.button-label:active {
	transform: translateY(2px);
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2), inset 0px -1px 0
		rgba(0, 0, 0, 0.22);
}

#tall-button:checked+.button-label {
	background: #2ECC71;
	color: #efefef;
}

#tall-button:checked+.button-label:hover {
	background: #29b765;
	color: #fff;
}

#grande-button:checked+.button-label {
	background: #D91E18;
	color: #efefef;
}

#grande-button:checked+.button-label:hover {
	background: #c21b15;
	color: #fff;
}

#venti-button:checked+.button-label {
	background: #4183D7;
	color: #efefef;
}

#venti-button:checked+.button-label:hover {
	background: #2c75d2;
	color: #fff;
}

#hot-button:checked+.button-label {
	background: #D91E18;
	color: #efefef;
}

#hot-button:checked+.button-label:hover {
	background: #c21b15;
	color: #fff;
}

#ice-button:checked+.button-label {
	background: #4183D7;
	color: #efefef;
}

#ice-button:checked+.button-label:hover {
	background: #2c75d2;
	color: #fff;
}

.hidden {
	display: none;
}
</style>
</head>
<body style="font-family: 'yg-jalnan'">
	<form action="payProc" method="post">
		<div style="display: flex; flex-direction: column; width: 500px; height: 500px;">
			<div style="display: flex; flex: 1 0 0; justify-content: flex-end;">
				<input id="modal_closeBtn" class="modal_closeBtn" type="button" onclick="closePopup()"
					style="width: 7%; border-radius: 15%; background-size:contain; background-image: url('resources/images/cancel.png'); background-repeat: no-repeat;"/>		
			</div>
				<div style="display: flex; flex-direction: column; font-size: 2.0rem; flex: 8 0 0; margin-top: 6%">
					<div style="flex: 2 0 0;">
					<span>이름: </span><input style="font-size:2.0rem; width: 350px; border:none;" name="name" value="킴준석"></div>
					<div style="flex: 2 0 0;">
					<span>E-mail: </span><input style="font-size:2.0rem; width: 350px; border:none;" ame="email" value="wnstjr3252@naver.com"></div>
					<div style="flex: 2 0 0;">
					<span>연락처: </span><input style="font-size:2.0rem; width: 350px; border:none;" name="phone" value="010-6668-3252"></div>
					<div style="flex: 2 0 0;">
					<span>주소: </span><input style="font-size:2.0rem; width: 350px; border:none;" name="address" value="부산광역시 연제구"></div>
					<div style="flex: 2 0 0;">
					<span>총금액: </span><input style="font-size:2.0rem; width: 350px; border:none;" name="totalPrice" value="${totalPrice}" readonly></div>
				</div>

				<div style="display: flex; flex-direction: column; flex: 1 0 0;">
					<input type="submit" value="결제하기"
						style="flex: 1 0 0; margin: 10% 5%; border-radius: 20px; font-family: 'yg-jalnan'; font-size: 1.5rem; background-color: black; color: #fff;">
				</div>
			</div>
		
	</form>
</html>








