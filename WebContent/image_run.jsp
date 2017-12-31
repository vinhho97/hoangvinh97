<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="boostrap/css/bootstrap.min.css">	
</head>
<body>
	<div class="container-fluid" style="height:60%; object-fit:cover;">
		<div class="row">
		<div class="col-md-12 ">
		 <div  id="myCarousel" class="carousel slide " data-ride="carousel">		   
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		    <li data-target="#myCarousel" data-slide-to="3"></li>
		    <li data-target="#myCarousel" data-slide-to="4"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="item active">
		      <img src="img/banner1.png" alt="Los Angeles" style=" width: 100%; height: 60%;">
		    </div>
		
		    <div class="item">
		      <img src="img/banner2.png" alt="Chicago" style="width:100%; height: 60%">
		    </div>
		  
		    <div class="item">
		      <img src="img/banner3.png" alt="New york" style="width: 100%; height: 60%">
		    </div>
		     <div class="item">
		      <img src="img/banner4.png" alt="New york" style="width: 100%; height: 60%;">
		    </div>
		     <div class="item">
		      <img src="img/banner5.png" alt="New york" style="width: 100%; height: 60%;">
		    </div>
		  </div>
		
		  
		    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right"></span>
		      <span class="sr-only">Next</span>
		    </a>
		  </div>
		  </div>
		  </div>
		  </div>

</body>
</html>