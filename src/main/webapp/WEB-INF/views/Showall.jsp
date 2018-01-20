<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<%--<%@ include file="header.jsp"%> --%>
<body  style="background-image: url('resources/images/al.jpg')">
<table  class="table table-bordered" border="1" align="center" width="50px" >
<tr class="success">
<th align="center">Id</th>
<th align="center">Name</th>
<th>price</th>
<th>quantity</th>
<th>description</th>
<th>image</th>
<th colspan="2">operation</th>
</tr>
<c:forEach items='${listData}' var="product">
<tr class="active">
<td>${product.id}</td>
<td>${product.name}</td>
<td>${product.price}</td>
<td>${product.quantity}</td>
<td>${product.desc}</td>
<td><img src="${product.imageUrl}" height="100" width="100"/> </td>
<td><a href="remove/${product.id}">delete</a></td>
<td><a href="update/${product.id}">update</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>