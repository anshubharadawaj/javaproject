<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix = "form" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

.bg{background:url('resources/images/shopping1.jpg') no-repeat; width:100%; height:100vh;}
.form-container{border:6px solid #fff; padding:40px; 50px; margin-top:5vh;
 -webkit-box-shadow: -5px 4px 26px 11px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 4px 26px 11px rgba(0,0,0,0.75);
box-shadow: -5px 4px 26px 11px rgba(0,0,0,0.75); 
}
</style>
<jsp:include page="header.jsp"></jsp:include>
<body>
<%-- <form class="form-container">  --%>
<div class="container-fluid bg">
		

 <div class="col-lg-5"></div>
		<div class="col-lg-5">
		<!-- <div style="margin-top:100px"> -->
		<h3>ADD Category Here</h3>
		    
		<form:form action="addCategory" method="post" commandName="addNewCategory">
		<div class="form-group">
			<form:label path="name">Category Name</form:label><br/>
			<form:input path="name" required="required" placeholder="Enter Category Name"/><br/>
			</div>
			
		<div class="form-group">
			<form:label path="description">Category Description</form:label><br/>
			<form:textarea path="description" required="required" placeholder="Enter description"/><br/>
			</div>
			
			<input type="submit" value="Submit" align="center"/>
			
			</form:form>
			</div></div></div>
            
</body>
</html>