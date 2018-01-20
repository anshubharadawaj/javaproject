<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib uri = "http://www.springframework.org/tags/form" prefix ="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <jsp:include page="header.jsp"></jsp:include>

<body style="background-image: url('resources/images/name.jpg')">
<%-- <div class="container" ng-app="sortApp" ng-controller="styloController">
 <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search here..." ng-model="searchProduct" style="width:200px">
      </div>      
    </div>
  </form>      --%>
<table  class="table table-bordered" border="1" align="center" width="50px" >
<thead>
<tr class="active">
<th>Id</th>
<th>Name</th>
<th>price</th>
<th>quantity</th>
<th>image</th>
</tr>
</thead>
<c:forEach items='${listData}' var="product">
 <tbody>
<tr  class="warning">
<td>${product.id}</td>
<td><a href="namedesc/${product.id}">${product.name}</a></td>
<td>${product.price}</td>
<td>${product.quantity}</td>
<td><a href="imageUrl"><img src="${product.imageUrl}" height="100" width="100"/></a></td>
</tr>
</tbody>
</c:forEach>
</table>
</div>
</body>
</html>