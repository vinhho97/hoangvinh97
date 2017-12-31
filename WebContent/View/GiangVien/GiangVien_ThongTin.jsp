<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri= "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html >
<html> 
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Thông tin giảng viên</title>
		<link href ="css/style.css" rel = "stylesheet" type = "text/css"> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
	 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript">
		</script>
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
		      <a class="navbar-brand q" href="#" style="font-size: 30px;color: blue">TEACHER</a>		      
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
		    		<img class="img-circle" alt="" src="img/avatar.jpg" style="margin-top: -15%;margin-right: 110px;width:30px;height:30px;vertical-align:middle;">
		    	
		    	</span>
		    	<p class="username" style=" margin-top: -27%;color:white;text-align: center;">
		    		${ThongTinGiangVien.fullName}
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
<div class="container-fluid" style="">
	<div class="row">
	<div class="col-md-3 b" id="mySidenav" style="margin-top:-1%;">
	  <div class="list-group a1" style="margin-left:0%; background:; width:100%;">
    <a  style="font-size: 30px;background:#2e3b46; color: #fff;height:50px;width:100%;" href="#" class="list-group-item"><span style="margin-left:0%;" class="glyphicon glyphicon-home"></span>
        Home</a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="GiangVienThongTinController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${ThongTinGiangVien.fullName}" class="list-group-item"><span class="fa fa-address-book">&nbsp;&nbsp;Thông tin giảng viên</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="GiangVien_LichGiangDayController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${ThongTinGiangVien.fullName}" class="list-group-item "><span class="fa fa-envelope">&nbsp;&nbsp;Lịch giảng dạy</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="GiangVien_NhapDiemController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${ThongTinGiangVien.fullName}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Nhập điểm</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="GiangVien_DoiMatKhauContrller?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${ThongTinGiangVien.fullName}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Thay đổi mật khẩu</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="Forward" class="list-group-item "><span class="fa fa-arrow-left">&nbsp;&nbsp;Thoát</span></a>     
 	
  </div>
	</div>
	<div class="col-md-8" style="margin-top:0px;">
	
	<div class="row" style="">
	<div class="panel panel-default">
	<div class="panel-body">
		<div class= "col-sm-4" style="background: white;">
			<div class="panel panel-default" style="width: 200px; height: 200px;background: white; margin-left: 35px; border: 1px solid #c0c0c0;" >
			<div class="panel-heading">
			
			<img src="img/anhThuKy.jpg"  style="width: 200px; height: 190px;">
			</div>
			</div>
			<table style="margin-left: 70px;height: 10px;">
				<tr>
					<td>
						 <p style="align: center;font-size: 20px; color: green;">${ThongTinGiangVien.fullName}</p>
					</td>
				</tr>
			</table>
			<div class="panel panel-default well">
				
						<p><span style="font-size: 19px; color: #b0d877 !important;" class="fa fa-phone"></span><a><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ThongTinGiangVien.phone}</strong></a></p>
						<p><span style="font-size: 19px; color: #c6699f !important;" class="ace-icon fa fa-envelope bigger-120 pink"></span><a><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ThongTinGiangVien.email}</strong></a></p>
						<p><span style="font-size: 19px; color: #3A87AD !important;" class="fa fa-address-card"></span><a><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ThongTinGiangVien.address}</strong></a></p>
				
			</div>
				
		</div>
		<div class="col-sm-8 well" style="background: white;">
			<div class="span7">   
				<div class="widget stacked widget-table action-table">
					<div class="widget-header">
						<i class="icon-th-list"></i>
					<div class="widget-header">	
					<i class="icon-th-list"></i>
					<h3 style="color: red;">Thông tin giảng viên</h3>
					</div> <!-- /widget-header -->
				
				<div class="widget-content">
					
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Tiêu đề</th>
								<th>Nội dung</th>
								
							</tr>
						</thead>
						<tbody>
						
							<tr>
								<td>Mã giảng viên</td>
								<td>${ThongTinGiangVien.secretaryID}</td>
							</tr>
							<tr>
								<td>Họ và tên</td>
								<td>${ThongTinGiangVien.fullName}</td>
							</tr>
							<tr>
								<td>Giới tính</td>
								<td>${ThongTinGiangVien.male}</td>
							</tr>
							<tr>
								<td>Ngày sinh</td>
								<td>${ThongTinGiangVien.birthDay}</td>
							</tr>
							<tr>
								<td>Điện thoại</td>
								<td>${ThongTinGiangVien.phone}</td>
							</tr>
							<tr>
								<td>Email</td>
								<td>${ThongTinGiangVien.email}</td>
							</tr>
							<tr>
								<td>Địa chỉ</td>
								<td>${ThongTinGiangVien.address}</td>
							</tr>
							</tbody>
							
						</table>
					
				</div> <!-- /widget-content -->
					</div> <!-- /widget-content -->
		</div> <!-- /widget -->
	    </div>  
	  </div>     
	  </div>
	  </div>
	  </div>                    		
 	</div>
 	</div>
 </div>
</body>