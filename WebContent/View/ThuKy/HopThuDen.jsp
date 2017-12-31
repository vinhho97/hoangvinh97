<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri= "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html >
<html> 
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Insert title here</title>
				<link href ="css/style.css" rel = "stylesheet" type = "text/css"> 
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
		<style type="text/css">
	.list-group {
      margin-left:50px;
     right:0;
     margin-top:0px;
    }
    .lead {
     margin-left:40px;
     color: red;
    }
		</style>
	<script type="text/javascript">
	$('#pagination-demo').twbsPagination({
        totalPages: 16,
        visiblePages: 6,
        next: 'Next',
        prev: 'Prev',
        onPageClick: function (event, page) {
            //fetch content and render here
     
        }
    });	
	</script>
</head>
<body style="background:#f5f5f5">
		<nav class="navbar navbar-inverse" style=" background:  #1a2732 ">
		  <div class="container-fluid" style="height: 60px;">
		  	<button type="button" class="[ navbar-toggle ]" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="[ sr-only ]">Toggle navigation</span>
					<span class="[ icon-bar ]"></span>
					<span class="[ icon-bar ]"></span>
					<span class="[ icon-bar ]"></span>
				</button>
		    <div class="navbar-header">
		      <a class="navbar-brand q" href="#" style="font-size: 30px;color: #fed189">NICE</a>
		      <a class="navbar-brand q" href="#" style="font-size: 30px;color: blue">SECRETARY</a>		      
		    </div>
		    <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;" >
		      <ul class="nav navbar-nav " >		      
		      <li>
		      <form class="navbar-form">
              			<input class="form-control" type="text" placeholder="Search">
           		 </form>
           		</li>
		    </ul>	     
		    <ul class="nav navbar-nav navbar-right">
		    	<li><span class="fa fa-align-justify" style="font-size:30px; color: #c0c0c0; margin-top: 26%;">&nbsp;&nbsp;&nbsp;</span></li>
		    	<li><span class="fa fa-envelope" style="font-size:30px; color: #c0c0c0; margin-top: 22%;">&nbsp;&nbsp;&nbsp;</span></li>
		    	<li><span class="fa fa-bell" style="font-size:30px; color: #c0c0c0; margin-top: 26%;">&nbsp;&nbsp;&nbsp;</span></li>
		    	<li>
		    	 <div class="dropdown">
		    	<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="background: #1a2732; width: 100%;height: 40px; margin-top: 10px; border: 1px solid #1a2732">
		    	<span class="profile-ava" style="font-size:30px; color: #c0c0c0; ">
		    		<img class="img-circle" alt="" src="img/avatar.jpg" style="margin-top: -15%;margin-right: 100px;width:30px;height:30px;vertical-align:middle;">
		    	
		    	</span>
		    	<p class="username" style=" margin-top: -30%;color:white;text-align: center;">
		    		${name}
		    	</p>
		    	</button>
		    	 <ul class="dropdown-menu">
      			<li><a href="DangXuatController"><i class="ace-icon fa fa-power-off"></i>&nbsp;&nbsp;Đăng xuất</a></li>
     			
  				  </ul>
		    	</div>
		    	</li>
		    	
		    </ul>	
		  </div>
		  </div>
		  
		</nav>
<div class="container-fluid">
	<div class="row">
	<div class="col-md-3 b" id="mySidenav" style="margin-top:-1%;">
	  <div class="list-group a1" style="margin-left:0%; background:; width:100%;">
    <a  style="font-size: 30px;background:#2e3b46; color: #fff;height:50px;width:100%;" href="#" class="list-group-item"><span style="margin-left:0%;" class="glyphicon glyphicon-home"></span>
        Home</a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="LoginServlet?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item"><span class="fa fa-address-book">&nbsp;&nbsp;Thông tin thư ký</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="HopThuDenController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&pageid=1&name=${name}" class="list-group-item "><span class="fa fa-envelope">&nbsp;&nbsp;Hộp thư đến</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="ThuKyXuatPhieuDiemController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Xuất phiếu điểm</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="ThuKyPheDuyetController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Phê duyệt</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="ThuKyDoiMatKhauController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Đổi mật khẩu</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="Forward" class="list-group-item "><span class="fa fa-arrow-left">&nbsp;&nbsp;Thoát</span></a>     
 	
  </div>
	</div>
	<div class="col-md-8" style="margin-top:0px; background: white;">
		<p><span style="font-size: 25px;">Inbox</span> >> Mailbox with some customizations as described in docs</p>
		<div class="panel panel-default">
			<button style=" border: 1px solid #C5D0DC ; width: 60px; height: 50px; margin-left: 2%;"><i style=" color: blue !important;" class="blue ace-icon fa fa-inbox bigger-150"></i><br /><span style="font-size:15px;">Inbox</span></button>
			<button style=" border: 1px solid #C5D0DC ; width: 60px; height: 50px; margin-top: 0%;"><i style=" color: orange !important;" class="orange ace-icon fa fa-location-arrow bigger-130"></i><br /><span style="font-size:15px;">Sent</span></button>
			<button style="border: 1px solid #C5D0DC ; width: 60px; height: 50px;	 margin-top: 0%;"><i style=" color: #69aa46 !important;" class="green ace-icon fa fa-pencil bigger-150"></i><br /><span style="font-size:15px;">Draft</span></button>
			<form id="btn" style="margin-top:-45px;">
			<a href="WriteMailController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" style="float: right;background: #7461AA; width: 130px; height: 40px;margin-top: 5px; margin-right: 5px;color: white;font-size: 17px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i style="font-size: 18px;margin-top: 11px;; color: white !important;" class="ace-icon fa fa-envelope bigger-130"></i>&nbsp;Soạn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			</form>
           		 <table style="width: 100%;background:#f1f5fa; height: 40px; ">
			           	<tr style="height: 40px; border: 1px solid #EAEDF1;">
							<td> 
								      <label style="w	idth: 5px;margin-left:10px;"><input type="checkbox" value="" style="width: 20px;height: 20px;"></label>
								      
							</td>
							<td>
								<div style="width: 20px;height:20px; color: #feb902 !important;" ></div>
							</td>
							<td style=" color: #609fc4;width: 150px;"></td>
							
							<td style=" color: #609fc4;width: 500px;"><strong>Inbox(2 unread messages)</strong></td>
							
							
						</tr>
           		 </table>
			</div>		
			
			
			<table style="width: 100%; margin-top: -2%;">
			
			<c:forEach  items = "${listMessage}" var= "l">
			
			<tr style="height: 40px; border: 1px solid #EAEDF1">
				<td style="width:5%;"> 
					      <label style="width: 5px;margin-left:10px;"><input type="checkbox" value="" style="width: 20px;height: 20px;"></label>
					      
				</td>
				<td style="width:5%;">
					<div style="width: 20px;height:20px; color: #feb902 !important;" class="fa fa-star-o" ></div>
				</td>
				<td style=" color: #609fc4;width: 30%;"><strong>${l.fullName}</strong></td>
				
				<td style=" color: #609fc4;width: 40%;"><strong><a href="ThuKyHienNoiDungThuController?supportID=${l.supportID}&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">${l.frontpager}</a></strong></td>
				
				<td style= "width: 20%;	">${l.dateSend}</td>
				
			</tr>
			</c:forEach>
			

			</table>
			
			<ul class="pagination">
				<c:if test ="${numberpage == 1}" >
					    <li class="disabled"><a href="">&laquo;</a></li>
					    <li><a href="HopThuDenController?pageid=1&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">1</a></li>
					    <li><a href="HopThuDenController?pageid=2&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">2</a></li>
					    <li><a href="HopThuDenController?pageid=3&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">3</a></li>
					    <li><a href="HopThuDenController?pageid=${numberpage+1}&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">&raquo;</a></li>
 				</c:if>
 				<c:if test ="${numberpage == maxpageid}" >
					    <li ><a href="HopThuDenController?pageid=${numberpage-1}&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">&laquo;</a></li>
					    <li><a href="HopThuDenController?pageid=1&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">1</a></li>
					    <li><a href="HopThuDenController?pageid=2&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">2</a></li>
					    <li><a href="HopThuDenController?pageid=3&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">3</a></li>
					    <li class="disabled"><a href="">&raquo;</a></li>
 				</c:if>
 				<c:if test ="${numberpage>1 && numberpage<maxpageid}" >
					    <li ><a href="HopThuDenController?pageid=${numberpage-1}&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">&laquo;</a></li>
					    <li><a href="HopThuDenController?pageid=1&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">1</a></li>
					    <li><a href="HopThuDenController?pageid=2&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">2</a></li>
					    <li><a href="HopThuDenController?pageid=3&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">3</a></li>
					    <li><a href="HopThuDenController?pageid=${numberpage+1}&user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}">&raquo;</a></li>
 				</c:if>
 			 </ul>
			
 	</div>
 	</div>
 	</div>
</body>