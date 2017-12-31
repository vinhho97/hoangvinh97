<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri= "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html >
<html> 
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Nhập điểm</title>
		<link href ="css/style.css" rel = "stylesheet" type = "text/css"> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
	 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript">
		function getInfo(){
			var flag = true;
			var HoTen1=document.getElementById("HoTen1");
			var hoten1= HoTen1.value;
			var HoTen2=document.getElementById("HoTen2");
			var hoten2= HoTen2.value;
			var HoTen3=document.getElementById("HoTen3");
			var hoten3= HoTen3.value;
			var HoTen4=document.getElementById("HoTen4");
			var hoten4= HoTen4.value;
			var HoTen5=document.getElementById("HoTen5");
			var hoten5= HoTen5.value;
			var re = /^[0-9-+]+$/;
			if(!re.test(hoten1)){
				flag = false;
				HoTen1.style.border = "1px solid red";
			}
			else{
				HoTen1.style.border = "1px solid grey";
			}
			var re =  /^[0-9-+]+$/;
			if(!re.test(hoten2)){
				flag = false;
				HoTen2.style.border = "1px solid red";
			}
			else{
				HoTen2.style.border = "1px solid grey";
			}
			var re =  /^[0-9-+]+$/;
			if(!re.test(hoten3)){
				flag = false;
				HoTen3.style.border = "1px solid red";
			}
			else{
				HoTen3.style.border = "1px solid grey";
			}
			var re =  /^[0-9-+]+$/;
			if(!re.test(hoten4)){
				flag = false;
				HoTen4.style.border = "1px solid red";
			}
			else{
				HoTen4.style.border = "1px solid grey";
			}
			var re =  /^[0-9-+]+$/;
			if(!re.test(hoten5)){
				flag = false;
				HoTen5.style.border = "1px solid red";
			}
			else{
				HoTen5.style.border = "1px solid grey";
			}
		}
		function NhapDiem(method1)
		{
			document.getElementById("frmNhapDiem").action ="GiangVien_NhapDiemController";
			document.getElementById("frmNhapDiem").method = method1;
			document.getElementById("frmNhapDiem").submit();
		}
				
		
		/*$("#btntable").click(function()
		{
			
			for(var i =0 ; i< table.rows.length;i++)
			{
					//studentid[i++] = this.cells[1].innerHTML;
					//grade[i++] = this.cells[5].innerHTML;
					alert(this.cells[1].innerHTML);
					//alert(studentid[i]);
			}			
		});	*/
		
		</script>
		
		
<script type="text/javascript">
	
	
	function test()
	{
		var table = document.getElementById("table");
		var studentid = [];
		var grade = [];
		var p=0;
		for(var i =1 ; i< table.rows.length;i++)
		{
				studentid[p++] = table.rows[i].cells[1].innerHTML;
				grade[p++] = document.getElementById(i);
				alert(table.rows[i].cells[1].innerHTML);
				
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
	<div class="col-md-8" style="margin-top:0px;">
	
	<div class="row" style="">
	<div class="panel panel-default">
	<div class="panel-body">
		<div class= "col-sm-4" style="background: white;">

<div class="container">
	<div class="row">
	<div class="col-sm-3">
	  <div class="list-group" style="margin-top:15%">
    </div>
	</div>
	<p class="lead" >Nhập điểm</p>
	<div class="col-sm-9" style="margin-top:0px;">
	<div >
		
			<div class="span7">   
				<div class="widget stacked widget-table action-table">
					<div class="widget-header">
						<i class="icon-th-list"></i>

				
						<div class="btn-group">
        					<label for = "danhsach"><p>Danh sách</p></label>
        						<select name = "lop">
        							<option value="C3"> Lớp lập trình wep chiều thứ 3 </option>
        							<option value="C5"> Lớp lập trình wep chiều thứ 5 </option>
        							<option value="S6">Lớp lập trình wep sáng thứ 6 </option>
        							<option value="S7">Lớp lập trình wep sáng thứ 7 </option>
        						</select>
        								</div>
        				<div class="row">
       
        <table id = "table" class="table table-bordered">
        
                <thead>
                  <tr>
                    <th>STT</th>
                    <th>Mã sinh viên</th>
                    <th>Họ tên</th>
                    <th>Lớp học</th>
                    <th>Khóa</th>
                    <th>Điểm</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items ="${NhapDiemHocVien}" var ="l">
                  <tr>
                  	<td>${STT =STT +1}</td>
                    <td>${l.studentID}</td>
                    <td>${l.studentName}</td>
                    <td>${l.className}</td>
                    <td>${l.courseName}</td>
                    <td><input  name="${Add =Add +1}" id="${Add =Add +1}" class="form-control" placeholder=""></td>	
                    	
                  </tr>
                  
                 </c:forEach>
                </tbody>
            	
        </table>
         	<button onclick="test()" id="btntable"  style="width:100px; height:30px;margin-left: 70%;margin-top:0%">Cập nhật</button>
        
             
		</div> <!-- /widget -->
	    </div>  
	  </div>
	  </div>
 	</div>
                        		
 	</div>

 	</div>
 	</div>
 </div>
 <div>
			
			
			
			
			
			
			
				
		</div>
		
	    </div>  
	  </div>     
	  </div>
	  </div>
	  </div>                    		
 	</div>
</body>