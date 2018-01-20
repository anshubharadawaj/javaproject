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
		    <h1>add categories here</h1>
		    
		<form:form action="addCategory" method="post" commandName="addNewCategory">
			<form:label path="name"> Category name</form:label><br/>
			<form:input path="name"/><br/>
			
			<form:label path="description">Category description</form:label><br/>
			<form:input path="description"/><br/>
			
			<input type="submit" value="Submit" />
			</form:form>
			</div>









</body>
</html>