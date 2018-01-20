<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>    
    
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>stylo site</title>

</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid" >
    <div class="navbar-header"> 
	<img src="resources/images/logo.png" class="img-circle"  width="80" height="70" top="15" align="left">  
      <a class="navbar-brand" href="#"> </a>
    </div>
		
		<%
 	
	Authentication auth1 = SecurityContextHolder.getContext().getAuthentication();
	    if (auth1 != null && !auth1.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_ADMIN")))
	    	{
	    		
	 %>
       		<ul class="nav navbar-nav">
          	<li><a href="${pageContext.request.contextPath}/addproduct">ADD PRODUCT</a></li>
          	<li><a href="${pageContext.request.contextPath}/addcategory">ADD CATEGORY</a></li>
            <li><a href="${pageContext.request.contextPath}/Showall">SHOW ALL</a></li>
            <li><a href="${pageContext.request.contextPath}/allcategory">All Category</a></li>
            </ul>
       
        <%
	    	}
	    }
        %>   
        
        
        
         
         
         <%
	Authentication auth2 = SecurityContextHolder.getContext().getAuthentication();
	    if (auth1 != null && !auth2.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_USER")))
	    	{
	 %>
       		<ul class="nav navbar-nav">
          	<li><a href="${pageContext.request.contextPath}/index">HOME</a></li>
          	<li><a href="${pageContext.request.contextPath}/aboutus">ABOUTUS</a></li>
            <li><a href="${pageContext.request.contextPath}/contactus">CONTACTUS</a></li>
            <li><a href="${pageContext.request.contextPath}/productdesc">PRODUCTS</a></li>  
          </ul>
       
        <%
	    	}
	    	
	    }
        %>
        
         
          
         
         
          
        
        <ul class="nav navbar-nav navbar-right"> 
        
         <%
      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	String currUser=auth.getName();
	    	
	    	request.setAttribute("currUser", currUser);
	    	 %>
      	<li><a href="${pageContext.request.contextPath}/cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
        <li><a><span class="glyphicon glyphicon-user"></span>Welcome ${currUser}</a></li>
        <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        <%
	    }
	    else
	    {
	    	%>
	  <li><a href="${pageContext.request.contextPath}/cart"> <span class="glyphicon glyphicon-shopping-cart"></span>Shopping Cart</a></li>
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	        <%
	    }
	    
        
        %>
      </ul>
    </div> 


</nav>
</body>
</html>