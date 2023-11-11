<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />



<style type="text/css">

.bg-blue {
	background-color: rgb(50, 96, 158) !important;
}

.c-blue {
	color: rgb(50, 96, 158) !important;
}

#bg1 {
	background-image:
		url("https://uicookies.com/demo/theme/health/images/img_1.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	height: 300px; /* Adjust the height as needed */
	position: relative;
}

#bg2 {
	background-image:
		url("https://uicookies.com/demo/theme/health/images/img_2.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	height: 300px; /* Adjust the height as needed */
	position: relative;
}

.ls2 {
	letter-spacing: 3px !important;
}

.dark-overlay {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.2);
}

#over-1 {
	background: rgba(0, 0, 0, 0.5) !important;
}

.bg-sky {
	background-color: #4fb5e6;
}

.c-sky {
	color: #4fb5e6;
}

.pt-170 {
	padding-top: 170px;
}

.t1 {
	position: absolute;
	bottom: 0;
	left: 0;
	padding: 20px;
	color: white;
}

.t2 {
	position: relative;
	z-index: 1;
}

#cont-1, #cont-2 {
	position: relative !important;
}

#cont-1 {
	z-index: 2 !important;
	margin-bottom: -140px;
}

#cont-2 {
	z-index: 1 !important;
}

#cont-3 {
	background-image:
		url("https://uicookies.com/demo/theme/health/images/bg_1.jpg");
}

.text-grey {
	color: rgb(206, 206, 206) !important;
}

.bg-grey {
	background-color: rgb(226, 226, 226) !important;
}

.inp-1 {
	outline: none;
	border: none;
	border-bottom: 1px white solid;
	padding-bottom: 10px;
	color: rgb(230, 230, 230);
}

.inp-1::placeholder {
	color: rgb(230, 230, 230);
}

.hov1 {
	transition: transform 0.4s ease;
}

.hov1:hover {
	transform: translateY(-40px);
	background-color: #4fb5e6 !important;
	box-shadow: 0px 0px 10px black;
	transition: 0.4s;
}

.inp-2 {
	background-color: #4fb5e6;
	border: none;
	border-bottom: 1px solid white;
	outline: none;
	color: white;
	padding-bottom: 10px;
	padding-left: 5px;
}

.inp-2::placeholder {
	color: white;
}

.number-counter {
	text-align: center;
	padding: 30px;
}

#appointmentMessage {
	display: none;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	padding: 20px;
	border: 1px solid #ccc;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	z-index: 1000;
}

@media screen and (max-width: 576px) {
	.mp0 {
		padding-left: 0px !important;
	}
	.med-l {
		padding-left: 0px !important;
		justify-content: start !important;
		margin-left: 10px !important;
		margin-top: 20px !important;
	}
	#cont-1 {
		width: 100%;
	}
	.pdt-0 {
		padding-top: 0;
	}
}

@media screen and (max-width: 768px) {
	.pdt-0 {
		padding-top: 0px !important;
	}
}
</style>
</head>
<body>
	<script>
		function incrementNumber(elementId, targetNumber) {
			let currentNumber = 0;
			const element = document.getElementById(elementId);
			const increment = targetNumber / 100;

			const intervalId = setInterval(function() {
				if (currentNumber < targetNumber) {
					currentNumber += increment;
					element.innerText = Math.round(currentNumber);
				} else {
					element.innerText = targetNumber;
					clearInterval(intervalId);
				}
			}, 10);
		}

		let animationStarted = false;

		window.addEventListener("scroll", function() {
			if (!animationStarted) {
				const div = document.querySelector(".number-counter");
				const divPosition = div.getBoundingClientRect().top;

				if (divPosition <= window.innerHeight / 2) {
					incrementNumber("number1", 22);
					incrementNumber("number2", 182);
					incrementNumber("number3", 8921);
					incrementNumber("number4", 252);
					animationStarted = true;
				}
			}
		});

		document.addEventListener("DOMContentLoaded", function() {
			const scrollToFormButton = document.getElementById("scrollToForm");
			const appointmentForm = document.getElementById("appointmentForm");

			scrollToFormButton.addEventListener("click", function() {
				// Use smooth scrolling behavior
				appointmentForm.scrollIntoView({
					behavior : "smooth"
				});
			});
		});
		
		
		
		
	</script>
</body>
</html>