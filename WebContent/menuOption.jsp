<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modal</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('.check-all').click(function() {
			$('.ab').prop('checked', this.checked);
		});
	});

	function count(type) {
		const resultElement = document.getElementById('result');

		let number = resultElement.innerText;

		if (type === 'plus') {
			number = parseInt(number) + 1;
		} else if (type === 'minus') {
			number = parseInt(number) - 1;
		}

		resultElement.innerText = number;
	}
</script>
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
	<div
		style="display: flex; flex-direction: column; width: 500px; height: 900px;">
		<div style="display: flex; flex: 0.5 0 0; justify-content: flex-end;">
			<button id="modal_closeBtn" class="modal_closeBtn" onclick="closePopup()"
				style="width: 7%; height: 65%; border-radius: 15%; margin: 3%; background-image: url('./images/cancel.png'); background-repeat: no-repeat;">
			</button>
		</div>
		<div
			style="margin-top: 10%; margin-left: 5%; display: flex; flex-direction: row; flex: 2 0 0; text-align: center;">

			<div
				style="display: flex; flex: 1 0 0; background-image: url('./images/americano.jpg'); background-size: cover; border-radius: 50%">

			</div>
			<div style="display: flex; flex-direction: column; flex: 1 0 0;">
				<div style="flex: 1 0 0; font-size: 1.5rem;">
					<div style="margin-top: 17%">아뭬리콰노</div>
				</div>
				<div style="flex: 1 0 0; font-size: 0.7rem;">
					<div style="margin-top: 10%">
						1회 제공량 (kcal) 10 나트륨 (mg) 5<br> 포화지방 (g) 0 당류 (g) 0<br>
						단백질 (g) 1 카페인 (mg) 150

					</div>

				</div>
				<div
					style="display: flex; flex: 1 0 0; font-size: 0.8rem; align-items: center; margin-top: 10%">
					<div style="display: flex; flex: 1 0 0; justify-content: center;">
						<div style="flex: 0.2 0 0;">
						<input type='button' onclick='count("minus")' value='-'
							style="height: 100%" /></div>
						<div id='result' style="flex: 0.2 0 0;">0</div>
						<div style="flex: 0.2 0 0;">
						<input type='button' onclick='count("plus")' value='+'
							style="height: 100%" /></div>
					</div>
				</div>
			</div>
		</div>
		<div
			style="display: flex; flex-direction: column; flex: 2.5 0 0; margin: 7% 7% 2% 7%;">
			<form>
				<p>
					<input type="checkbox" name="all" class="check-all"> <label>
						그럴 일 없겠지만 모두 선택</label>
				</p>
				<hr>
				<div style="display: flex; flex: 1 0 0; text-align: center;">
					<div style="flex: 1 0 0;">
						<input class="hidden radio-label" id="ice-button" type="radio"
							name="hotIce" checked/> <label class="button-label"
							for="ice-button">
							<p>ICE</p>
						</label>
					</div>
					<div style="flex: 1 0 0;">
						<input class="hidden radio-label" id="hot-button" type="radio"
							name="hotIce" /> <label class="button-label"
							for="hot-button">
							<p>HOT</p>
						</label>
					</div>
				</div>
				<p>
					<input type="checkbox" name="cb1" class="ab"> <label>샷
						추가 (+ 500\)</label>
				</p>
				<p>
					<input type="checkbox" name="cb2" class="ab"> <label>휘핑크림
						추가 (+ 500\)</label>
				</p>
				<p>
					<input type="checkbox" name="cb3" class="ab"> <label>초콜릿
						칩 추가 (+ 500\)</label>
				</p>
				<p>
					<input type="checkbox" name="cb4" class="ab"> <label>타피오카
						추가 (+ 1000\)</label>
				</p>
				<div class="container">
					<div class="button-wrap">
						<input class="hidden radio-label" id="tall-button" type="radio"
							name="size" checked="checked" /> <label
							class="button-label" for="tall-button">
							<p>Tall</p>
						</label> <input class="hidden radio-label" id="grande-button" type="radio"
							name="size" /> <label class="button-label"
							for="grande-button">
							<p>Grande</p>
						</label> <input class="hidden radio-label" id="venti-button" type="radio"
							name="size" /> <label class="button-label"
							for="venti-button">
							<p>Venti</p>
						</label>
					</div>
				</div>
			</form>

		</div>
		<div
			style="display: flex; flex-direction: row; flex: 1 0 0; font-family: 'yg-jalnan'; font-size: 1.5rem;">
			<div style="display: table; flex: 1.4 0 0;">
				<div
					style="display: table-cell; vertical-align: middle; text-align: center; padding: 10%">
					대애충 4000원
					<hr>
				</div>
			</div>
			<div style="display: flex; flex-direction: column; flex: 1 0 0;">
				<button
					style="flex: 1 0 0; margin: 10% 5%; border-radius: 20px; font-size: 1.5rem; background-color: black; color: #fff;"
					onclick="self.location=''">주문하기</button>
			</div>
		</div>
	</div>


</body>

</html>

