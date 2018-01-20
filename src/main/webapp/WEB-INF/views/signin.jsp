<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
*{color:#fff;}
.bg{background:url('resources/images/lap.jpg') no-repeat; width:100%; height:100vh;}
.form-container{border:0px solid #fff; padding:50px; 60px; margin-top:10vh;
-webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
-moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
}
</style>
<meta charset="ISO-8859-1">
<title>login</title>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix ="form"%>
</head>

<jsp:include page="header.jsp"></jsp:include>
<body>

<div class="container-fluid bg">
		
		<div class="row"></div>
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
		<div class="col-md-4 col-sm-4 col-xs-12">
		<%-- <form class="form-container"> --%>
		<form action="login" method="post" class="form-container" commandName="addNewLogin">
		<h1>Login here</h1>
		  <div class="form-group">
			<label for="email">Email</label>
			<input type="email" class="form-control" name="email" placeholder="Enter valid E-mailId" />
			</div>
		   <div class="form-group">
			<label for="password">Password</label>
			<input type="password" class="form-control" name="password" placeholder="Enter Password"/>
			</div>
			<button type="submit" class="btn btn-success btn-block">submit</button>
			
			</form>
						
			</div>
		    </div>
		    
		    
</body>
</html>