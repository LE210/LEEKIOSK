<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html style="width: 1000px; height: 2000px;">
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>home</title>

<style>

.menu {
	-ms-overflow-style: none;
}

.menu::-webkit-scrollbar {
	display: none; /* Chrome, Safari, Opera*/
}

.btn {
	float: left;
	box-shadow: 3px 3px 3px white;
	transition-duration: 0.5s;
	border-radius: 10%;
	font-size: 1.5rem;
	font-family: 'yg-jalnan';
}

.btn:active {
	margin-left: 10%;
	margin-top: 10%;
	box-shadow: none;
}

@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>


<style>
button {
	height: 2.5em;
	cursor: pointer;
}

#popup {
	display: flex;
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .7);
	z-index: 1;
}

#popup.hide {
	display: none;
}

#popup.has-filter {
	backdrop-filter: blur(1px);
	-webkit-backdrop-filter: blur(1px);
}

#popup .content {
	padding: 20px;
	background: #fff;
	border-radius: 5px;
	box-shadow: 1px 1px 3px rgba(0, 0, 0, .3);
}
</style>

</head>
<body
	style="margin: 0px; width: 1000px; height: 2000px; font-family: 'yg-jalnan'">
	<div
		style="display: flex; flex-direction: column; width: inherit; height: inherit;">
		<div id="logo"
			style="background-image: url('./images/Starbucks.jpg'); background-repeat: no-repeat; flex: 0.6 0 0; background-size: cover;">
			<button
				style="border: 0px !important; background-color: #000000 !important; margin: 2%; display: flex; width: 8%; height: 30%";>
				<img alt="" src="./images/home.png" style="flex: 1 0 0"
					onclick="location.href='Home.jsp'">
			</button>
		</div>
		<div id="menucate"
			style="text-align: center; font-size: 2.5rem; display: flex; flex-direction: inherit; background-color: #009900; flex: 3 0 0">
			<div class="menu" id="cate"
				style="overflow-x: scroll; display: inherit; background-color: #220000; flex: 0.1 0 0; text-align: center">
				<div
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">Event</div>
				<div
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">
					커피&<br>에스프레소
				</div>
				<div
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">블론드</div>
				<div
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">티바나</div>
				<div
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">콜드브루</div>
				<div
					style="margin: 5px; background-color: #ffffff; flex: 0 0 30%; display: flex; align-items: center; justify-content: center; border-radius: 12%;">블렌디드</div>

			</div>
			<div class="menu" id="menu"
				style="font-size: 1.5rem; overflow-y: scroll; display: flex; flex-wrap: wrap; justify-content: space-around; background-color: #111111; flex: 0.9 0 0">
				<div id="menu_1"
					style="overflow: hidden; border-radius: 7%; display: flex; flex-direction: column; background-color: #ffffff; width: 22.5%; height: 30%; margin: 1%;">
					<div
						style="background-image: url('./images/americano.jpg'); background-size: contain; flex: 3 0 0"></div>
					<div
						style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
						아메리카노</div>
					<div
						style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
						2000원</div>
				</div>

				<div
					style="overflow: hidden; border-radius: 7%; display: flex; flex-direction: column; background-color: #ffffff; width: 22.5%; height: 30%; margin: 1%;">
					<div
						style="background-image: url('./images/puppuccino.jpg'); background-size: contain; flex: 3 0 0"></div>
					<div
						style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
						퍼푸치노</div>
					<div
						style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
						5000원</div>
				</div>

				<div
					style="overflow: hidden; border-radius: 7%; display: flex; flex-direction: column; background-color: #ffffff; width: 22.5%; height: 30%; margin: 1%;">
					<div
						style="background-image: url('./images/capuccino.jpg'); background-size: contain; flex: 3 0 0"></div>
					<div
						style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
						카푸치노</div>
					<div
						style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
						3000원</div>
				</div>

				<div
					style="overflow: hidden; border-radius: 7%; display: flex; flex-direction: column; background-color: #ffffff; width: 22.5%; height: 30%; margin: 1%;">
					<div
						style="background-image: url('./images/caramel_macciato.jpg'); background-size: contain; flex: 3 0 0"></div>
					<div
						style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
						카라멜 마키아또</div>
					<div
						style="display: flex; align-items: center; justify-content: center; background-color: #000000; color: #ffffff; flex: 1 0 0">
						2000원</div>
				</div>


			</div>
		</div>
		<div id="cart" style="font-size: 1.2rem; display: flex; flex: 0.8 0 0">
			<div class="menu"
				style="overflow-x: scroll; flex-wrap: nowrap; padding: 3%; flex: 0.7 0 0; background-color: #000000; display: flex; justify-content: flex-start;">

				<div
					style="overflow: hidden; border-radius: 7%; margin: 5px; flex-direction: column; flex: 0 0 30%; background-color: #777777; display: flex;">
					<div style="background-color: #BBBBBB; flex: 0.7 0 0; padding: 5%">
						<div
							style="display: flex; flex-direction: row-reverse; border-radius: 20%; background-image: url('./images/americano.jpg'); background-size: contain; width: 100%; height: 100%;">
							<button
								style="justify-content: flex-end; width: 20%; height: 17%; background-image: url('./images/cancel.png');"></button>
						</div>
					</div>
					<div
						style="flex: 0.3 0 0; background-color: #FFFFFF; display: flex; align-items: center; justify-content: center">아메리카노</div>
				</div>
				<div
					style="overflow: hidden; border-radius: 7%; margin: 5px; flex-direction: column; flex: 0 0 30%; background-color: #777777; display: flex;">
					<div style="background-color: #BBBBBB; flex: 0.7 0 0; padding: 5%">
						<div
							style="display: flex; flex-direction: row-reverse; border-radius: 20%; background-image: url('./images/capuccino.jpg'); background-size: contain; width: 100%; height: 100%;">
							<button
								style="justify-content: flex-end; width: 20%; height: 17%; background-image: url('./images/cancel.png');"></button>
						</div>
					</div>
					<div
						style="flex: 0.3 0 0; background-color: #FFFFFF; display: flex; align-items: center; justify-content: center">카푸치노</div>
				</div>
				<div
					style="overflow: hidden; border-radius: 7%; margin: 5px; flex-direction: column; flex: 0 0 30%; background-color: #777777; display: flex;">
					<div style="background-color: #BBBBBB; flex: 0.7 0 0; padding: 5%">
						<div
							style="display: flex; flex-direction: row-reverse; border-radius: 20%; background-image: url('./images/caramel_macciato.jpg'); background-size: contain; width: 100%; height: 100%;">
							<button
								style="justify-content: flex-end; width: 20%; height: 17%; background-image: url('./images/cancel.png');"></button>
						</div>
					</div>
					<div
						style="flex: 0.3 0 0; background-color: #FFFFFF; display: flex; align-items: center; justify-content: center">카라멜
						마키아또</div>
				</div>
				<div
					style="overflow: hidden; border-radius: 7%; margin: 5px; flex-direction: column; flex: 0 0 30%; background-color: #777777; display: flex;">
					<div style="background-color: #BBBBBB; flex: 0.7 0 0; padding: 5%">
						<div
							style="display: flex; flex-direction: row-reverse; border-radius: 20%; background-image: url('./images/puppuccino.jpg'); background-size: contain; width: 100%; height: 100%;">
							<button
								style="justify-content: flex-end; width: 20%; height: 17%; background-image: url('./images/cancel.png');"></button>
						</div>
					</div>
					<div
						style="flex: 0.3 0 0; background-color: #FFFFFF; display: flex; align-items: center; justify-content: center">퍼푸치노</div>
				</div>


			</div>
			<div
				style="background-color: #000000; display: flex; flex-direction: column; flex: 0.3 0 0; padding: 3%; font-size: 2.5rem;">
				<div
					style="flex: 1 0 0; display: flex; align-items: center; justify-content: center; color: white;">
					합계 금액 :<br>\ 10000 원
				</div>
				<div style="background-color: #000000; flex: 2.5 0 0;"></div>
				<div style="display: flex; flex: 2 0 0;">
					<button class="btn" style="margin: 3%; flex: 1 0 0;">취소</button>
					<button class="btn" onclick="location.href='Cash.jsp'"
						style="margin: 3%; flex: 1 0 0;">결제</button>
				</div>
			</div>
		</div>
	</div>

	<div id="popup" class="hide" name="test">
		<div id="modal-content" class="content" name="test2"></div>
	</div>
</body>



<script>
	$("#modal-content").load("menuOption.jsp");
	$("#menu_1").on("click", function() {
		showPopup(true);
	})
	$("#popup").click(function(e) {
		if (e.target.getAttribute("id") == "popup") {
			closePopup()
		}
		;
	});

	function showPopup(hasFilter) {
		const popup = document.querySelector('#popup');

		if (hasFilter) {
			popup.classList.add('has-filter');
		} else {
			popup.classList.remove('has-filter');
		}

		popup.classList.remove('hide');
	}

	function closePopup() {
		const popup = document.querySelector('#popup');
		popup.classList.add('hide');
	}
</script>

</html>