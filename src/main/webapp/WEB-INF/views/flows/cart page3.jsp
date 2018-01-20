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
    
    $scope.total = 0;
    
    $http(	{
    			method: 'POST',
	      		url: '/stylo/getAllCartItems',
	      		 headers : {'Content-Type':'application/x-www-form-urlencoded'}
    			}).then(function(response){
			    	console.log(response.data);
			    
			    	$scope.data = response.data;
			    	
			    	for( var x = 0; x < $scope.data.length ; x++ )
			    	{
			    		$scope.total += $scope.data[x].price *  $scope.data[x].quantity;
			    	}
			    	
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


<br>
<br>

<h1 style="margin: auto; width: 80%; text-align: center;">Invoice</h1>

<br>
<br>



<div class="row">
		<div class="col-sm-3"><h4>Shipping Address:</h4></div>
		<div class="col-sm-3"><h4>{{data[0].shipaddr}}</h4></div>
		<div class="col-sm-3"><h4>Billing Address:</h4></div>
		<div class="col-sm-3"><h4>{{data[0].billaddr}}</h4></div>
	</div>


<br>
<br>


<br>
<br>

<!-- <h4 style="margin: auto; width: 80%; text-align: center;">Total:</h4> -->
<!-- <h4 style="margin: auto; width: 80%; text-align: center;">{{total}}</h4> -->


<br>
<br>
      
         <a href="${flowExecutionUrl}&_eventId=submitBillingAndShipping" class="btn btn-primary" style="margin-left:50px;">Previous</a>
		 <a href="${flowExecutionUrl}&_eventId=confirmOrder" class="btn btn-primary" style="float:right; margin-right:50px;">Next</a>
		 
		 <br>
<br>
<br>
<br>


<table class="table table-striped">

	<thead>
		<tr>
		<th>Name</th>
		<th>Description</th>
		<!-- <th>Category</th>
		<th>Image</th> -->
		<th>Quantity</th>
		<th>Price</th>
		<th>Sub-Total</th>

		</tr>
	</thead>
	
	<tbody>
		<tr ng-repeat="x in data">
		<th>{{x.name}}</th>
		<th>{{x.desc}}</th>
		<!-- <th>{{x.pcat}}</th>
		<th><img src='{{x.pimg}}' width="100"></th> -->
		<th>{{x.quantity}}</th>
		<th>{{x.price}}</th>
		<th>{{x.price * x.quantity}}</th>
		</tr>
	</tbody>

</table>



<br>
<br>
<br>
<br>

<h3 style="margin: auto; width: 80%; text-align: center;">Total:</h2>
<h3 style="margin: auto; width: 80%; text-align: center;">{{total}}</h3>

<br>
<br>
<br>
		 
</body>
</html>