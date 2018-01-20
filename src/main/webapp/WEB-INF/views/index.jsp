<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    
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
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp"></jsp:include>

<%--<%@ include file="header.jsp"%> --%>
<body  style="background-image: url('resources/images/')">
<div id="myCarousel" class="carousel slide" style="width:1300px; height:400px;margin:0 auto;">

<ol class="carousel-indicators">
<li class="active" data-slide data-target="#myCarousel" data-slide-to="0"> </li>
<li data-slide data-target="#myCarousel" data-slide-to="1"> </li>
<li data-slide data-target="#myCarousel" data-slide-to="2"> </li>
<li data-slide data-target="#myCarousel" data-slide-to="3"> </li>
</ol>

	<div class="carousel-inner" style="width:1300px; height:400px;margin:0 auto;" >
		<div class="item active">
				<img src="resources/images/g.jpg"  class="images-responsive">
		</div>
		<div class="item">
 			<img src="resources/images/b.jpg"  class="images-responsive" >
 		</div>
		<div class="item">
 			<img src="resources/images/c.jpg"  class="images-responsive" >
 		</div>
		<div class="item">
 			<img src="resources/images/hand.jpg"  class="images-responsive">
 		</div>
		<div class="item">
 			<img src="resources/images/f.jpg" class="images-responsive" >
 		</div>
</div>


<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">previous</span></a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span></a>
</div></br></br>
<div>

<table border=0 align="center">
<tr align="center">
<td><img src="resources/images/c.jpg" width="300px" height="200px"/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><img src="resources/images/b.jpg" width="300px" height="200px"/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><img src="resources/images/d.jpg" width="300px" height="200px"/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
<td align="center"><a href="x.jsp">GOWN</a></td>
<td align="center"><a href="a">GOWN</a></td>
<td align="center"><a href="c.jsp">SHIRT</a></td>
</tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>

<tr>
<td><img src="resources/images/shirt.jpg" width="300px" height="200px"/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><img src="resources/images/je.jpg" width="300px" height="200px"/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><img src="resources/images/shorts.jpg" width="300px" height="200px"/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
<td align="center"><a href="shirt.jsp">SHIRT</a></td>
<td align="center"><a href="je.jsp">JEANS</a></td>
<td align="center"><a href="shorts.jsp">SHORTS</a></td>
</tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
</table>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>





