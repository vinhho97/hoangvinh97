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
			
		<script type="text/javascript">
			function XuatPhieuDiem()
			{
				alert("Xuất phiếu điểm thành công!");
			}
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

	
	<div class="col-md-8" style="margin-top:0px;">
	<div class="panel panel-default">
	<div class="panel-body" style="border: 1px solid #f1f1f1">
		<h2 style="color: red;">Danh sách học viên </h2>
		</div>
		<div class="panel-body">
	<div class="panel panel-default">
			<table  style="width: 100%;">
				<tr  style="height: 40px; background:  #f1f1f1;">
					<td style="  border: 1px solid #c0c0c0; width: 15%; text-align: center;">
						<p style="margin-left:5%; margin-top: 10px;"><strong>Mã học viên</strong></p>
					</td>
					<td style="  border: 1px solid #c0c0c0;text-align: center;">
						<p style="margin-top: 10px;"><strong>Tên học viên</strong></p>
					</td>
					<td style="width: 10%;	border: 1px solid #c0c0c0;">
						<p style="margin-top: 10px;"><strong>Giới tính</strong></p>
					</td>
					<td style="  border: 1px solid #c0c0c0;text-align: center;">
						<p style="margin-top: 10px;"><strong>Khóa học</strong></p>
					</td>
					<td style="  border: 1px solid #c0c0c0;text-align: center;">
						 <p style="margin-top: 10px;"><strong>Điểm</strong></p>
					</td>
					
				</tr>
				<c:forEach items = "${listXuatPhieuDiem}" var= "l">
				<tr  style="height: 40px; backgroud: #438EB9;">
					<td style="  border: 1px solid #c0c0c0; width: 15%; text-align: center;">
						<p style="margin-left:5%;">${l.studentID}</p>
					</td>
					<td style="  border: 1px solid #c0c0c0;text-align: center;">
						<p>${l.studentName}</p>
					</td>
					<td style="width: 10%;	border: 1px solid #c0c0c0;">
						&nbsp;&nbsp;&nbsp;<a >${l.male}</a>
					</td>
					<td style="  border: 1px solid #c0c0c0;text-align: center;">
						<p>${l.courseName}</p>
					</td>
					<td style="  border: 1px solid #c0c0c0;text-align: center;">
						 <p>${l.mark}</p>
					</td>
					
				</tr>
				</c:forEach>
				
			</table> 
				<button onclick="XuatPhieuDiem()" style="margin-top: 3%;float: right;height: 40px; background: #87B87F;">In phiếu điểm</button>
				
			</div>
			</div>         
	</div>       		
 	</div>
 	</div>
 </div>
</body>