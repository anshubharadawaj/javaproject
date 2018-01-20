<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix = "form" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		    <h1><center>update product here</center></h1>
		    
		<form:form action="${pageContext.request.contextPath}/editProduct" method="post" commandName="product" enctype="Multipart/form-data">
		 <form:hidden path="id" value="${product.id}"/>
			<form:label path="name"> product</form:label><br/>
			<form:input path="name" value="${product.name}"/><br/>
			
			<form:label path="brand">brand</form:label><br/>
			<form:input path="brand" value="${product.brand}"/><br/>
			
			<form:label path="price">Price</form:label><br/>
			<form:input path="price" value="${product.price}"/><br/>
	
			<form:label path="desc">description</form:label><br/>
			<form:textarea path="desc" value="${product.desc}"/><br/>
			
			
			<form:label path="quantity">Quantity</form:label><br/>
			<form:input path="quantity" value="${product.quantity}"/><br/>
			
			<%--  <form:label path="image">Image</form:label><br/>
			<form:input path="image" type="file" name="file"/><br/> --%><br/>
			
			<input type="submit" value="Submit" />
			</form:form>	    
</div>

</body>
</html>