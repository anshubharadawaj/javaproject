<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix = "form" %>
<jsp:include page="header.jsp"></jsp:include>
<body style="background-image: url('resources/images/f.jpg')">
<form:form action="addCart" method="post" commandName="addNewCart">
<table border="0" align="center">
<tr>

<td colspan="3" align="center"><img src="${des.imageUrl}" height="200" width="200"/> </td>
</tr>
<tr>
<td>Id</td>
<td>&nbsp;&nbsp;</td>
<td>${des.id}</td>
</tr>
<tr>
<td>Name</td>
<td>&nbsp;&nbsp;</td>
<td>${des.name}</td>
</tr>
<tr>
<td>price</td>
<td>&nbsp;&nbsp;</td>
<td>${des.price}</td>
</tr>
<tr>
<td>quantity</td>
<td>&nbsp;&nbsp;</td>
<td>${des.quantity}</td>
</tr>
<tr></tr>
<tr>
<td>description</td>
<td>&nbsp;&nbsp;</td>
<td>${des.desc}</td>
</tr>

</table></form:form>
  <form action="${pageContext.request.contextPath}/AddCartToDB" method="post">
	
		<input type="hidden" value="${des.getId()}" name="id">
		
		<br>
		<br>
		<input type="number" placeholder="Quantity" class="form-control" name="quantity" style="margin: auto;  width: 10%; text-align: center;">
		<br>    
    	<button type="submit" class="btn btn-success" style=" float:center; margin-left:50px; margin-top:23px">AddToCart</button>	
	
	</form>
</body>

</body>
</html> 