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
    
    $scope.billadd='';
    $scope.shipadd='';
    $scope.done = false;
    
    $http(	{
    			method: 'GET',
	      		url: '/stylo/getAddress',
	      		 headers : {'Content-Type':'application/x-www-form-urlencoded'}
    			}).then(function(response){
			    	console.log(response.data);
			    
			    	$scope.data = response.data;
			   
			    	$scope.billadd=response.data.shipaddr;
			        $scope.shipadd=response.data.billaddr;
			        
			        console.log( $scope.shipadd );
			        console.log( $scope.billadd );
    			});
    
 $scope.Update=function(){
    	
	 	var json = {"ship":$scope.shipadd,"bill":$scope.billadd};
	 
    	$http(	{
			method: 'POST',
      		url: '/stylo/UpdateCartToDB',
      		data:JSON.stringify(json),
      		 headers : {'Content-Type':'application/json'}
			}).then(function(response){
		    	console.log(response.data);
		
		    	if(response.data.msg=="Updated")
		    	{
		    		$scope.done = true;	    	
		    	}
		    	
		    
		    	
			});
    	
    }
});
</script>

<body ng-app="myApp" ng-controller="myCtrl">

<h1 style="margin:auto; text-align:center;">Page 2</h1>
      
         <a href="${flowExecutionUrl}&_eventId=viewItemsInCart" class="btn btn-primary" style="margin-left:50px;">Previous</a>
		 <a href="${flowExecutionUrl}&_eventId=invoice" class="btn btn-primary" style="float:right; margin-right:50px;">Next</a>
		 
		 <br>
<br>
<br>
<br>

<h1 style="margin: auto; width: 80%; text-align: center;">Shipping Address:</h1><textarea rows="5" name="shippingaddress"  class="form-control" ng-model="shipadd" style="margin: auto; width: 40%;"></textarea>

<br>
<br>

<h1 style="margin: auto; width: 80%; text-align: center;">Billing Address:</h1><textarea rows="5" name="billingaddress" class="form-control" ng-model="billadd" style="margin: auto; width: 40%;"></textarea>

<br>
<br>

<button ng-click="Update()" class="btn btn-success" style="float:left; margin-left:600px;  text-align: center;">Update</button>

<br>

<h1 class="text text-success" ng-show='done' style="margin: auto; width: 80%; text-align: center;">Updated Successfully</h1>
<br>
<br>
<br>
<br>


		 
		 
</body>
</html>