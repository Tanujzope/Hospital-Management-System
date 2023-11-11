<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="Style.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>

</head>
<body>
	<jsp:include page="Navbar.jsp"></jsp:include>

	<div class="container pt-5 pb-5">
		<div class="row">
			<div class="col-md-6">
				<h1 class="c-blue">The Future Of Medical</h1>
			</div>
		</div>
	</div>
	<div class="container" id="cont-1">
		<div class="row">
			<div class="col-md-4" id="bg1">
				<div class="dark-overlay"></div>
				<div class="t1">
					<i class="fas fa-solid fa-suitcase-medical text-light"></i>
					<h5 class="text-light ls2">PEDIATRIC</h5>
					<p class="text-grey ls2">THERAPY</p>
				</div>
			</div>
			<div class="col-md-4 bg-sky">
				<h5 class="text-light ls2 mt-3">OPENING HOUR</h5>
				<p class="text-grey ls2">MEDICAL CENTER</p>
				<div class="col">
					<div class="row d-flex align-items-center justify-content-between">
						<h5 class="text-light">MON-FRI</h5>
						<p class="text-light">5:00-17:00</p>
					</div>
					<hr />
					<div class="row d-flex align-items-center justify-content-between">
						<h5 class="text-light">MON-FRI</h5>
						<p class="text-light">5:00-17:00</p>
					</div>
					<hr />
					<div class="row d-flex align-items-center justify-content-between">
						<h5 class="text-light">MON-FRI</h5>
						<p class="text-light">5:00-17:00</p>
					</div>
				</div>
			</div>
			<div class="col-md-4" id="bg2">
				<div class="dark-overlay"></div>
				<div class="t1">
					<i class="fas fa-light fa-heart-circle-plus text-light"></i>
					<h5 class="text-light ls2">PSYCHIATRIC</h5>
					<p class="text-grey ls2">THERAPY</p>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="Department.jsp"></jsp:include>



	<div class="container p-5">
		<div class="row mt-5">
			<div
				class="col-md-4 justify-content-center d-flex flex-column align-items-center">
				<i class="fas fa-regular fa-tag c-blue"
					style="font-size: 40px; margin-bottom: 20px"></i>
				<h5 class="c-sky">Medical Pricing</h5>
				<p class="text-center">Far far away, behind the word mountains,
					far from the countries Vokalia.</p>
			</div>
			<div
				class="col-md-4 justify-content-center d-flex flex-column align-items-center">
				<i class="fa-solid fa-shield-heart c-blue"
					style="font-size: 40px; margin-bottom: 20px"></i>
				<h5 class="c-sky">Quality & Safety</h5>
				<p class="text-center">Far far away, behind the word mountains,
					far from the countries Vokalia.</p>
			</div>
			<div
				class="col-md-4 justify-content-center d-flex flex-column align-items-center">
				<i class="fa-solid fa-suitcase-medical c-blue"
					style="font-size: 40px; margin-bottom: 20px"></i>
				<h5 class="c-sky">Immidiate Service</h5>
				<p class="text-center">Far far away, behind the word mountains,
					far from the countries Vokalia.</p>
			</div>
		</div>
		<div class="row mb-5">
			<div
				class="col-md-4 justify-content-center d-flex flex-column align-items-center">
				<i class="fa-solid fa-binoculars c-blue"
					style="font-size: 40px; margin-bottom: 20px"></i>
				<h5 class="c-sky">Cutting-Edge Equipment</h5>
				<p class="text-center">Far far away, behind the word mountains,
					far from the countries Vokalia.</p>
			</div>
			<div
				class="col-md-4 justify-content-center d-flex flex-column align-items-center">
				<i class="fa-solid fa-book-medical c-blue"
					style="font-size: 40px; margin-bottom: 20px"></i>
				<h5 class="c-sky">Personalized Treatment</h5>
				<p class="text-center">Far far away, behind the word mountains,
					far from the countries Vokalia.</p>
			</div>
			<div
				class="col-md-4 justify-content-center d-flex flex-column align-items-center">
				<i class="fa-solid fa-user-doctor c-blue"
					style="font-size: 40px; margin-bottom: 20px"></i>
				<h5 class="c-sky">Experience Physicians</h5>
				<p class="text-center">Far far away, behind the word mountains,
					far from the countries Vokalia.</p>
			</div>
		</div>
	</div>


	<jsp:include page="Doctors.jsp"></jsp:include>


	<div class="container pt-5 pb-5">
		<div class="row pt-5 pb-5">
			<div class="col-md-3 number-counter">
				<h1 id="number1" class="c-blue">0</h1>
				<h5 class="text-grey">Founders</h5>
			</div>
			<div class="col-md-3 number-counter">
				<h1 id="number2" class="c-blue">0</h1>
				<h5 class="text-grey">Number of Staffs</h5>
			</div>
			<div class="col-md-3 number-counter">
				<h1 id="number3" class="c-blue">0</h1>
				<h5 class="text-grey">Happy Patients</h5>
			</div>
			<div class="col-md-3 number-counter">
				<h1 id="number4" class="c-blue">0</h1>
				<h5 class="text-grey">Business Partners</h5>
			</div>
		</div>
	</div>

	<jsp:include page="Subscribe.jsp"></jsp:include>

	<jsp:include page="Footer.jsp"></jsp:include>







</body>
</html>






