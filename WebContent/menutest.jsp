<!DOCTYPE html>
<html>
<head>
			<style>
			body {
			    font-family: "Lato", sans-serif;
			}
			
			.sidenav {
			    height: 100%;
			    width: 250px;
			    position: fixed;
			    z-index: 1;   
			    background-color: #0082c8;
			    overflow-x: hidden;
			    transition: 0.5s;
			    padding-top: 60px;
			}
			
			.sidenav a {
			    padding: 8px 8px 8px 32px;
			    text-decoration: none;
			    font-size: 20px;
			    color: white;
			    display: block;
			    transition: 0.3s;
			}
			
			.sidenav a:hover {
			    color: #f1f1f1;
			}
			
			.sidenav .closebtn {
			    position: absolute;
			    top: 0;
			    right: 25px;
			    font-size: 36px;
			    margin-left: 50px;
			}
			
			@media screen and (max-height: 450px) {
			  .sidenav {padding-top: 15px;}
			  .sidenav a {font-size: 18px;}
			}
			</style>
			</head>
			<body>
			
			
			
			<div id="mySidenav" class="sidenav well">
			<div class= "container">
			<div class="row">
			  <a href="javascript:void()" class="closebtn" onclick="closeNav()">&times;</a>
			  <a href="#">About</a>
			  <a href="#">Services</a>
			  <a href="#">Clients</a>
			  <a href="#">Contact</a>
			</div>
			</div>
			<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>
			
			<div>
			</div>
			</div>
			<script>
			function openNav() {
			    document.getElementById("mySidenav").style.width = "250px";
			}
			
			function closeNav() {
			    document.getElementById("mySidenav").style.width = "0";
			}
			</script>
			     
</body>
</html> 
