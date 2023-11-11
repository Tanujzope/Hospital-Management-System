<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false"%>
<jsp:include page="Style.jsp"></jsp:include>




<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div>
	<jsp:include page="Navbar.jsp"></jsp:include>
		
			<c:if test="${pageName eq 'About' }">
				<jsp:include page="About.jsp"></jsp:include>
			</c:if>
			<c:if test="${pageName eq 'Contact' }">
				<jsp:include page="Contact.jsp"></jsp:include>
			</c:if>
			<c:if test="${pageName eq 'Department' }">
				<jsp:include page="Department.jsp"></jsp:include>
			</c:if>
			
	<jsp:include page="Subscribe.jsp"></jsp:include>
		
	<jsp:include page="Footer.jsp"></jsp:include>
	</div>


</body>
</html>
