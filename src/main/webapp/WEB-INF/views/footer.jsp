<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>
.fa {
  padding: 2px;
  font-size: 15px;
  width: 25px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}
.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}
.fa-google {
  background: #dd4b39;
  color: white;
}
</style>

<footer>
<div style="background-color: #F8F8F8;">
<hr>
<br>

<table  style="margin-left:200px; width:80%; ">
	<thead>
		<tr>
			<th>Get to Know Us</th>
			<th><b>Connect with Us</b></th>
			<th><b>Our Promise</b></th>
		</tr>
	</thead>
	
	<tbody>
		<tr>
			<td><a href="${pageContext.request.contextPath}/aboutus"><h5>About Us</h5></a></td>
			<td><a href="https://www.facebook.com/"><h5>Facebook</h5></a></td>
			<td><h5>100% Original</h5></td>
		</tr>
	</tbody>
	
	<tbody>
		<tr>
			<td><h5><a href="${pageContext.request.contextPath}/contactus">Contact Us</h5></a></td>
			<td><h5><a href="https://twitter.com/">Twitter</h5></a></td>
			<td><h5>Return-15 days</h5></td>
		</tr>
	</tbody>
	
	<tbody>
		<tr>
			
			<td><h5><a href="https://accounts.google.com/">Gmail</h5></a></td>
			<td><h5>Get Free Delivery</h5></a></td>
		</tr>
	</tbody>
	
	<tbody>
		<tr>
			<%-- <td><h5><a href="${pageContext.request.contextPath}/TermsAndCondition">T&C</h5></a></td> --%>
			<td><h5><a href="https://www.instagram.com/">Instagram</h5></a></td>
		</tr>
	</tbody>
</table>


<hr>

<br>

<h5 style="margin-left:120px"><b>POPULAR SEARCHES</b></h5>
<br>
<h5 style="margin-left:120px">mural paintings | uddha idols | curtains | candle stands | flower pots |  


<hr>


<div class="row" style=" width:100%;">
	<div class="col-sm-1"></div>
	<div class="col-sm-3">In Case of Any Concern, <a href="${pageContext.request.contextPath}/contactus">Contact Us</a></div>
	<div class="col-sm-5"> © 2017 www.homedecor.com. All rights reserved</div>
	<div class="col-sm-3">bring the magic in your home</div>
</div>

<br>
<br>
</footer>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};
function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}
// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>