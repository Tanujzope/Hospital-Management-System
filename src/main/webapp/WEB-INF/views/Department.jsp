<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%String bookMsg = (String)request.getAttribute("bookMsg"); %>
    

<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>


   
</head>
<body>
<c:set var="pageName" value="Department"></c:set>
	<div class="container-fluid" id="cont-2">
      <div class="row">
        <div class="col-md-3 bg-blue pl-5 pt-170 mp-0">
          <h6 class="text-light">DEPARTMENT</h6>
          <hr />
          <a class="text-light text-decoration-none" href="">UROLOGY</a
          ><br /><br />
          <a class="text-light text-decoration-none" href="">PEDIATRICS</a
          ><br /><br />
          <a class="text-light text-decoration-none" href="">PSYCHIATRICS </a
          ><br /><br />
          <a class="text-light text-decoration-none" href="">PLASTIC SURGERY</a
          ><br /><br />
          <a class="text-light text-decoration-none" href="">NEUROSERGERY</a
          ><br /><br />
          <a class="text-light text-decoration-none" href=""
            >MORE DEPARTMENTS <i class="fa-solid fa-right-long"></i
          ></a>
        </div>
        <div class="col-md-9 pt-170 pr-5 pdt-0">
          <div class="row pr-5">
            <div class="col-md-4">
              <i
                class="fas fa-regular fa-tag c-blue"
                style="font-size: 40px; margin-bottom: 20px"
              ></i>
              <h5 class="c-sky">Medical Pricing</h5>
              <p>
                Far far away, behind the word mountains, far from the countries
                Vokalia.
              </p>
            </div>
            <div class="col-md-4">
              <i
                class="fa-solid fa-shield-heart c-blue"
                style="font-size: 40px; margin-bottom: 20px"
              ></i>
              <h5 class="c-sky">Quality & Safety</h5>
              <p>
                Far far away, behind the word mountains, far from the countries
                Vokalia.
              </p>
            </div>
            <div class="col-md-4">
              <i
                class="fa-solid fa-suitcase-medical c-blue"
                style="font-size: 40px; margin-bottom: 20px"
              ></i>
              <h5 class="c-sky">Immidiate Service</h5>
              <p>
                Far far away, behind the word mountains, far from the countries
                Vokalia.
              </p>
            </div>
          </div>
          <div class="row pr-5">
            <div class="col-md-4">
              <i
                class="fa-solid fa-binoculars c-blue"
                style="font-size: 40px; margin-bottom: 20px"
              ></i>
              <h5 class="c-sky">Cutting-Edge Equipment</h5>
              <p>
                Far far away, behind the word mountains, far from the countries
                Vokalia.
              </p>
            </div>
            <div class="col-md-4">
              <i
                class="fa-solid fa-book-medical c-blue"
                style="font-size: 40px; margin-bottom: 20px"
              ></i>
              <h5 class="c-sky">Personalized Treatment</h5>
              <p>
                Far far away, behind the word mountains, far from the countries
                Vokalia.
              </p>
            </div>
            <div class="col-md-4">
              <i
                class="fa-solid fa-user-doctor c-blue"
                style="font-size: 40px; margin-bottom: 20px"
              ></i>
              <h5 class="c-sky">Experience Physicians</h5>
              <p>
                Far far away, behind the word mountains, far from the countries
                Vokalia.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div class="container-fluid" id="cont-3">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="dark-overlay" id="over-1"></div>
				<div class="t2 p-5 mt-5 pb-5 mb-5">
					<h1 class="text-light" style="font-size: 50px">Specialists in
						Family Healthcare</h1>
					<p class="text-light" style="font-size: 20px">Far far away,
						behind the word mountains, far from the countries Vokalia.</p>
					<button id="scrollToForm" class="btn btn-primary pl-5 pr-5 mt-5 mb-5">
						Appointment <i class="fa-solid fa-right-long"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6 p-md-5 p-3 bg-sky">
				<div class="m-5">
					<h3 class="text-light mb-3">Recent Blog</h3>
					<p class="text-grey" style="margin-bottom: 0px">November 3,
						2023</p>
					<a href="" class="text-light text-decoration-none"
						style="font-size: 25px">The practice of medicine is a lot like
						parenting</a> <br /> <br />

					<p class="text-grey" style="margin-bottom: 0px">November 3,
						2023</p>
					<a href="" class="text-light text-decoration-none"
						style="font-size: 25px">Physicians: Want to overcome burnout?
						Start studying business.</a> <br /> <br />
					<p class="text-grey" style="margin-bottom: 0px">November 3,
						2023</p>
					<a href="" class="text-light text-decoration-none"
						style="font-size: 25px">Want a simple and easy-to-use EMR?
						Well, you can have it for free.</a> <br /> <br /> <a href=""
						class="text-light text-decoration-none">View More <i
						class="fa-solid fa-right-long"></i>
					</a>
				</div>
			</div>



			<div class="col-md-6 p-md-5 p-5 bg-blue" id="appointmentForm"
				style="margin-top: -100px">
				<h1 class="text-light mt-3 mb-3">Make An Appointment</h1>
				<hr />
				<form action="./book-appointment" method="post">
					<input type="text" name="name" placeholder="Your Name"
						class="bg-blue inp-1 w-75 mb-5" required="required" /><br /> <input
						type="text" name="email" placeholder="Your Email"
						class="bg-blue inp-1 w-75 mb-5" required="required" /><br /> <input
						type="date" name="appointmentDate" placeholder="Appointment Date"
						id="probootstrap-date" class="bg-blue inp-1 w-75 mb-5"
						required="required" />
					<textarea name="message" id="" cols="30" rows="7"
						placeholder="Write Your Message" class="bg-blue inp-1 w-75 mb-5"></textarea>
						<%if(bookMsg != null){ %>
							<h5 class="text-light"><%=bookMsg %></h5>
						<%} %>
					<button type="submit" class="btn-primary pl-5 pr-5 pt-3 pb-3">Submit
						Form</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

