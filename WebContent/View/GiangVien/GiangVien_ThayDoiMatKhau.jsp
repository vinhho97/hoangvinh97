<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri= "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html >
<html> 
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Thay đổi mật khẩu</title>
		<link href ="css/style.css" rel = "stylesheet" type = "text/css"> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
	 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript">
		function getInfo(method1){
			var flag = 0;
			var MaGV=document.getElementById("MaGV");
			var Matkhau=document.getElementById("Matkhau");
			var NhapLaiMatkhau=document.getElementById("NhapLaiMatkhau");
			if(MaGV.value=="" || MaGV.value.length < 8)
			{
				flag = 0;
				MaGV.style.border = "1px solid red";
			}
			else
			{
				flag = 1;
				MaGV.style.border = "1px solid grey";
			}
			if(Matkhau.value=="" || Matkhau.value.length<8)
			{
				flag = 0;
				Matkhau.style.border = "1px solid red";
			}
			else{
				flag = 1;
				Matkhau.style.border = "1px solid grey";
			}
			if(NhapLaiMatkhau.value=="" || NhapLaiMatkhau.value != Matkhau.value){
				flag = 0;
				NhapLaiMatkhau.style.border = "1px solid red";
			}
			else{
				flag = 1;
				NhapLaiMatkhau.style.border = "1px solid grey";
			}
			if(flag == "1")
			{
				
				document.getElementById("formLogin111").action= "GiangVien_DoiMatKhauContrller";
				document.getElementById("formLogin111").method= method1;
				document.getElementById("formLogin111").submit();
			}
		}
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
<div class="container-fluid" style="">
	<div class="row">
	<div class="col-md-3 b" id="mySidenav" style="margin-top:-1%;">
	  <div class="list-group a1" style="margin-left:0%; background:; width:100%;">
    <a  style="font-size: 30px;background:#2e3b46; color: #fff;height:50px;width:100%;" href="#" class="list-group-item"><span style="margin-left:0%;" class="glyphicon glyphicon-home"></span>
        Home</a>
      <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="GiangVienThongTinController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item"><span class="fa fa-address-book">&nbsp;&nbsp;Thông tin giảng viên</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="GiangVien_LichGiangDayController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item "><span class="fa fa-envelope">&nbsp;&nbsp;Lịch giảng dạy</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="GiangVien_NhapDiemController?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Nhập điểm</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="GiangVien_DoiMatKhauContrller?user=${DangNhap.userName}&pass=${DangNhap.passWord}&name=${name}" class="list-group-item "><span class="fa fa-file-text">&nbsp;&nbsp;Thay đổi mật khẩu</span></a>
     <a id="a1" style="font-size: 17px;background:white; color: black;height:50px;" href="Forward" class="list-group-item "><span class="fa fa-arrow-left">&nbsp;&nbsp;Thoát</span></a>     
 	
  </div>
	</div>
	<div class="col-md-6" style="margin-top:0px;">
	
	<div class="row" style="">
	<div class="panel panel-default">
	<div class="panel-body ">
		<div class= "col-sm-4" style="background: white;">
			
			
			
			
	<div class="col-sm-8" style="margin-top:0px;">
	<div >
		
		
			<div class="span7">   
				<div class="container py-5">
    <div class="row">
    
        <div class="col-md-12">
           
            <div class="row">
                <div class="col-md-6 mx-auto ">
                <div class="panel panel-default" style="width: 123%;margin-left: -11%;margin-top: -2.6%;">
					<div class="panel-heading ">
						<div class="row">
						<div class="col-sm-7">
						<p style="font-size: 15px;"><strong>Đổi mật khẩu</strong></p>
						<p>Mật khẩu phải có tối thiểu 8 ký tự</p>
						</div>
						
						<div class="col-sm-5">
							
								
                               </div>
                        
					</div>
					</div>
				</div>
                    <span class="anchor" id="formLogin"></span>

                    <!-- form card login -->
                    <div class="card rounded-0">
                        <div class="card-body">
                        	<div class= "panel panel-default">
                        	<div class="panel-heading">
                            <form id="formLogin111">
                               	<div class="form-group">
                                    <label style="width: 100%;margin-right:2%;font" >Tên tài khoản</label>
                                    <input type="text" name="UserName"  value="${DangNhap.userName}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label style="width: 100%;margin-right:2%;font" >Mật khẩu hiện tại</label>
                                    <input type="text" name="PassWord" Id="MaGV" placeholder="" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu Mới</label>
                                    <input type="password" name="Matkhau" Id="Matkhau" placeholder="" class="form-control">
                                </div>
                                 <div class="form-group">
                                    <label style="width: 100%;margin-right:2%;">Nhập lại mật khẩu</label>
                                    <input type="password" name="NhapLaiMatkhau" Id="NhapLaiMatkhau" placeholder="" class="form-control">
                                </div>
                                <h6 style="color: red"><%= request.getAttribute("msg") != null ? request.getAttribute("msg") : " " %></h6>
                                <button onclick = "getInfo('post'); return false" type="submit" class="btn btn-success btn-sm" style="width:100px; height:30px;margin-left: 70%;margin-top:0%">Cập nhật</button>
                            </form>
                            </div>
                            </div>
                        </div>
                        <!--/card-block-->
                    </div>
                    <!-- /form card login -->

                </div>


            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
    <!--/row-->
</div>
<!--/container-->
 	</div>                    		
 	</div>
			
			
			
			
			
			
			
				
		</div>
	</div>	
	    </div>  
	  </div>     
	  </div>
	  </div>
	  </div>                    		
 	</div>
</body>