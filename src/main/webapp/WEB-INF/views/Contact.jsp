<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false"%>
<%String contMsg = (String)request.getAttribute("contMsg"); %>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Document</title>

</head>
<body>
	<c:set var="pageName" value="Contact"></c:set>
	<div class="container pt-5 pb-5">
		<div class="row">
			<div class="col-md-5">
				<h1 class="c-blue">Contact</h1>
			</div>
		</div>
	</div>

	<div class="contaienr-fluid">
		<div class="row">
			<div class="col-md-3 bg-blue p-5">
				<div class="p-5">
					<h5 class="text-light">Contact</h5>
					<hr />

					<a href="#" class="text-light text-decoration-none mb-5">Contact</a>
					<br /> <a href="#" class="text-light text-decoration-none mb-5">More
						Link</a> <br /> <a href="#" class="text-light text-decoration-none">Another
						Link</a>
				</div>
			</div>

			<div class="col-md-9 p-5">
				<div class="pr-5 mr-5">
					<h3 class="c-blue">Get In Touch</h3>
					<form action="./contact-us" method="post">
						<input type="text" placeholder="Enter Your Name" name="contName"
							class="w-100 pb-3 mb-3" style="outline: none;"> <br>
						<input type="text" placeholder="Enter Your Email" name="contEmail"
							class="w-100 pb-3 mb-3" style="outline: none;"> <br>
						<textarea name="contMesg" id="" cols="30" rows="10"
							placeholder="Enter Your Message" class="w-100 mb-3"
							style="outline: none;"></textarea>
						<br>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
					<%if(contMsg != null){ %>
						<h5 class="text-primary"><%=contMsg %></h5>
					<%} %>
				</div>
				<%

				%>


			</div>
		</div>
	</div>


</body>

</html>