<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 70%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 10px;
}

tr:nth-child(even) {
    background-color: #dddddd;
    
}
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body style="background-image: url('resources/images/ag.jpg')">
<table border="1" align="center">
<tr>
<th>ID</th>
<th>NAME</th>
<th>DESCRIPTION</th>
<th colspan="2">OPERATION</th>
</tr>
<c:forEach items='${listData}' var="category">
<tr>
<td>${category.id}</td>
<td>${category.name}</td>
<td>${category.description}</td>
<td><a href="removec/${category.id}">delete</a></td>
<td><a href="updatec/${category.id}">update</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>