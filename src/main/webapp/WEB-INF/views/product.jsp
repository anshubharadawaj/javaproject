<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 
<!-- <script>
angular.module('sortApp', [])

.controller('styloController', function($scope) {
	$scope.product= [
                    {'sno': 1,
                    	'name':'Shirt',
                    	'price':' 5000',
                    	'image': 'resources/images/sh.jpg'},
                    	{ 'sno': 2,
                        	'name':'Coat',
                        	'price':' 10000',
                        	'image': 'resources/images/co.jpg'},
	                    	{ 'sno': 3,
                            	'name':' Popular Hats',
                            	'price':' $789',
                            	'image': 'resources/images/ca.jpg'},
		                    	{ 'sno': 4,
                                	'name':'Saree',
                                	'price':'  5000',
                                	'image': 'resources/images/saree.jpg'},
                                	{ 'sno': 5,
                                    	'name':'jeans',
                                    	'price':' 2000',
                                    	'image': 'resources/images/jeans.jpg'},
                                    	{ 'sno': 4,
                                        	'name':'gown',
                                        	'price':'  50000',
                                        	'image': 'resources/images/gown.jpg'},
                    ];
 
 
}); 
</script>
			

</head>
<body >


<div class="container" ng-app="sortApp" ng-controller="styloController">
  
   
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search here..." ng-model="searchProduct" style="width:200px">
      </div>      
    </div>
  </form> 
  
  <table class="table table-bordered table-striped">
    
    <thead>
      <tr>
        <td><b>sno</b></td>
        <td><b>name</b></td>
        <td><b>price</b></td>
        <td><b>image</b></td>
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="roll in product |  filter:searchProduct">
        <td>{{ roll.sno }}</td>
        <td>{{ roll.name }}</td>
        <td>{{ roll.price }}</td>
        <td><img src="{{roll.image}}" height=100 width=150></td>
      </tr>
    </tbody>
    </table>
  </div> 
  
   -->

  
  
</body>
</html>