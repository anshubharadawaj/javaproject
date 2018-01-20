<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body  style="background-image: url('resources/images/ag.jpg')">
<div align="center">
		    <h1><center>update categories here</center></h1>
		    
		<form:form action="${pageContext.request.contextPath}/editCategory" method="post" commandName="category">
		 <form:hidden path="id" value="${product.id}"/>
			<form:label path="name"> category</form:label><br/>
			<form:input path="name" value="${category.name}"/><br/>
			
			<form:label path="description">description</form:label><br/>
			<form:textarea path="description" value="${product.description}"/><br/>
			
			<input type="submit" value="Submit" />
		</form:form>	    
</div>


</body>
</html>