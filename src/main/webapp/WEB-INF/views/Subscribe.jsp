<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String subscMsg = (String) request.getAttribute("subscMsg");
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid bg-sky p-5">
		<div class="row p-5">
			<div class="col-md-8">
				<h1 class="text-light">Subscribe Newsletter</h1>
				<h5 class="text-light">Far far away, behind the word mountains,
					far from the countries Vokalia.</h5>
			</div>
		</div>

		<div class="row p-5 w-100">
			<form action="./subscribe-user" method="post" class="w-100">

				<input type="text" placeholder="Name"
					class="w-100 inp-2 col-md-4 m-3" name="subsName">
					 <input type="text" placeholder="Email" class="w-100 inp-2 col-md-4 m-3" name="subsEmail">

				<button type="submit"
					class="btn btn-primary w-100 pt-2 pb-2 col-md-3">Subscribe</button>
				
			</form>
			<%
				if (subscMsg != null) {
				%>
				<h5 class="text-light"><%=subscMsg%></h5>
				<%
				}
				%>
		</div>

	</div>
</body>
</html>