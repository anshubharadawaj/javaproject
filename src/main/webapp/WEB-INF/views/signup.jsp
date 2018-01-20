<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIGNUP</title>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body style="background-image:url('resources/images/bf.jpg')">

<center>
<div class="container">
		
		<div class="col-lg-5"></div> 
		<div class="col-lg-5">
		<div class="jumbotron" align="center" style="margin-top:0px" >
		    <h2><center>Sign Up</center></h2>
		    
		    
		<form:form action="addUser" method="post" commandName="addNewUser">
		<div class="form-group">
		<table>
			<tr>
			<div>
			<td><form:label path="fname">First Name</form:label></td>
			<td><form:input path="fname"  class="form-control" required="required" pattern="[a-zA-Z]{2,15}" title="plz enter atleast three alphabet" placeholder="Enter Firstname" /></td>
			</div>
			</tr>
			<tr>
			<div>
			<td><form:label path="lname">Last Name</form:label></td>
			<td><form:input path="lname" class="form-control" required="required" pattern="[a-zA-Z]{2,15}" title="plz enter atleast three alphabet" placeholder="Enter lastname"/></td>
			</div>
			</tr>
			<tr>
			<div>
			<td><form:label path="password">Password</form:label></td>
			<td><form:input path="password" class="form-control" required="required"   title="plz enter 6 character" placeholder="Enter Password"  type="password"/></td>
			</div>
			</tr>
			<tr>
			<div>
			<td><form:label path="email">Email</form:label></td>
			<td><form:input path="email" class="form-control" required="required" pattern="^[a-zA-Z0-9.\]{2,20}@[a-zA-Z]{2,20}\\.[a-zA-Z]{2,20}(\\.[a-zA-Z]{2,20}){0,1}$" title="forex-Anshu72@gmail.com" placeholder="Enter Email-ID"/></td>
			</div>
			</tr>
			<tr>
			<div>
			<td><form:label path="contact">Contact</form:label></td>
			<td><form:input path="contact" class="form-control" required="required" pattern="[7-9]{1}[0-9]{9}"  title="enter only 10 digit" placeholder="Enter Contactnumber" /></td>
			</div>
			</tr>
			<tr>
			<div>
			<td><form:label path="address">Address</form:label></td>
			<td><form:input path="address" class="form-control" required="required" pattern="[a-zA-z ]{2,50}" title="Enter valid address" placeholder="Enter Address"/></td>
			</div>
			</tr>
			<tr>
			<div>
			<td><form:label path="pin">Pin Code</form:label></td>
			<td><form:input path="pin" class="form-control" required="required" pattern="[0-9]{6}" title="enter only 6 digit" placeholder="Enter Pincode"/></td>
			</div>
			</tr>
			<tr>
			
			<td align="center" colspan="3">
			<input type="submit" value="Submit"/><br></td>
			</tr>
			
			</table></div>
		</form:form>    
</body>
</html> 