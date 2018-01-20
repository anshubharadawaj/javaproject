<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

</head>
<jsp:include page="header.jsp"></jsp:include>
<script>
var app = angular.module("myApp", []).controller("myCtrl", function($scope,$http) {
       
    $scope.data = [];
    
    $http(	{
    			method: 'POST',
	      		url: '/stylo/getAllCartItems',
	      		 headers : {'Content-Type':'application/x-www-form-urlencoded'}
    			}).then(function(response){
			    	console.log(response.data);
			    
			    	$scope.data = response.data;
			    	
    			});
    
    $scope.Delete=function(arg){
    	
    	alert(arg);
    	
    	var json={"id":arg};
    	
    	console.log( JSON.stringify(json) );
    	
    	$http(	{
			method: 'POST',
      		url: '/stylo/deletefromcart',
      		data:JSON.stringify(json),
      		 headers : {'Content-Type':'application/json'}
			}).then(function(response){
		    	console.log(response.data);
		    
		    	//Fetch Again
		    	$http(	{
	    			method: 'POST',
		      		url: '/stylo/getAllCartItems',
		      		 headers : {'Content-Type':'application/x-www-form-urlencoded'}
	    			}).then(function(response){
				    	console.log(response.data);
				    
				    	$scope.data = response.data;
				    	
	    			});
		    	
			});
    	
    }
    
});
</script>



<body ng-app="myApp" ng-controller="myCtrl">

<h1 style="margin:auto; text-align:center;">ALL ITEMS IN YOUR CART</h1>
      
         <a href="${pageContext.request.contextPath}/productdesc" class="btn btn-primary" style="margin-left:50px;">continue shopping</a>
		 <a href="${flowExecutionUrl}&_eventId=submitBillingAndShipping" class="btn btn-primary" style="float:right; margin-right:50px;">Next</a>


<table class="table table-striped" style="margin: auto; width: 90%; text-align: center;">

	<thead>
		<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Description</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Sub-Total</th>
		<th>Delete</th>
		</tr>
	</thead>
	
	<tbody>
		<tr ng-repeat="x in data">
		<th>{{x.id}}</th>
		<th>{{x.name}}</th>
		<th>{{x.desc}}</th>
		<th>{{x.quantity}}</th>
		<th>{{x.price}}</th>
		<th>{{x.price * x.quantity}}</th>
		<th><button ng-click="Delete(x.id)" class="btn btn-danger">Delete</button></th>
		</tr>
	</tbody>

</table>


</body>
</html>