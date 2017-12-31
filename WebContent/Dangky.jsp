	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix ="c" uri= "http://java.sun.com/jstl/core_rt" %> 
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Insert title here</title>	
		<link href ="css/style.css" rel = "stylesheet" type = "text/css"> 
		<link rel="stylesheet" type="text/css" href="boostrap/css/bootstrap.min.css">
		<script type ="text/javascript" src ="js/jquery-3.2.1.min.js"></script>
		<script type ="text/javascript" src ="js/jquery.validate.min.js"></script>		
		<script type="text/javascript">

$(function() {
	
	$("#firstname_error_message").hide();
	$("#username_error_message").hide();
	$("#password_error_message").hide();
	$("#retype_password_error_message").hide();
	$("#email_error_message").hide();
	$("#sex_error_message").hide();

	var error_username = false;
	var error_password = false;
	var error_retype_password = false;
	var error_email = false;
	var error_phone = false;
	var error_firstname = false;
	var error_sex = false;
	
	$("#firstname").focusout(function() {

		check_firstname();
		
	});
	
	
	$("#username").focusout(function() {

		check_username();
		
	});

	$("#password").focusout(function() {

		check_password();
		
	});

	$("#retypepassword").focusout(function() {

		check_retype_password();
		
	});

	$("#email").focusout(function() {

		check_email();
		
	});
	
	$("#phone").focusout(function() {

		check_phone();
		
	});
	
	$(".radio-inline").focusout(function() {

		check_sex();
		
	});
	
	var myIndex = 0;
	carousel();
	function carousel() {
	    var i;
	    var x = document.getElementsByClassName("mySlides");
	    for (i = 0; i < x.length; i++) {
	       x[i].style.display = "none";  
	    }
	    myIndex++;
	    if (myIndex > x.length) {myIndex = 1}    
	    x[myIndex-1].style.display = "block";  
	    setTimeout(carousel, 2000); // Change image every 2 seconds
	}

	
	
	
	
	function check_firstname() {
		
		var firstname_length = $("#firstname").val().length;
		
		if(firstname_length == 0) {
			$("#firstname_error_message").html("Họ tên không được trống");
			$("#firstname_error_message").show();      
			error_firstname = true;
		} else {
			$("#firstname_error_message").hide();
     		
		}
	
	}
	
	
	function check_username() {
	
		var username_length = $("#username").val().length;
		
		if(username_length < 5 || username_length > 20) {
			$("#username_error_message").html("username phải từ 5 đến 20 ký tự");
			$("#username_error_message").show();      
			error_username = true;
		} else {
			$("#username_error_message").hide();
     
		}
	
	}

	function check_password() {
	
		var password_length = $("#password").val().length;
		
		if(password_length < 8) {
			$("#password_error_message").html("password ít nhất 8 ký tự");
			$("#password_error_message").show();
			error_password = true;
		} else {
			$("#password_error_message").hide();
		}
	
	}

	function check_retype_password() {
	
		var password = $("#password").val();
		var retype_password = $("#retypepassword").val();
		
		if(password !=  retype_password) {
			$("#retype_password_error_message").html("Passwords không trùng khớp");
			$("#retype_password_error_message").show();
			error_retype_password = true;
		} else {
			$("#retype_password_error_message").hide();
		}
	
	}

	function check_email() {

		var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
	
		if(pattern.test($("#email").val())) {
			$("#email_error_message").hide();
		} else {
			$("#email_error_message").html("Email không hợp lệ");
			$("#email_error_message").show();
			error_email = true;
		}
	
	}
	
	function check_phone() {
	      var pattern = new RegExp( /^\d{10}$/);  
			
			if(pattern.test($("#phone").val())) {
				$("#phone_error_message").hide();
			} else {
				$("#phone_error_message").html("Số điện thoại không hợp lệ");
				$("#phone_error_message").show();
				error_phone = true;
			}

}
	function check_sex(){
		if ($("input[name='sex']:checked").val())
		{
			$("#sex_error_message").hide();
		}
		else
		{
			$("#sex_error_message").html("Bạn chưa chọn giới tính");
			$("#sex_error_message").show();
			error_sex = true;
		}
	}
	
	
	
	
	$("#registration_form").submit(function() {
		
		error_firstname = false;
		error_username = false;
		error_password = false;
		error_retype_password = false;
		error_email = false;
		error_phone = false;
		error_sex = false;
		
		check_firstname();
		check_username();
		check_password();
		check_retype_password();
		check_email();
		check_phone();
		check_sex();
		if(error_firstname == false && error_username == false && error_password == false && error_retype_password == false && error_email == false && error_phone == false && error_sex == false) {
			alert ("Đăng ký thành công");
			return true;
			
		} else {
			alert ("Đăng kxý không thành công");
			return false;	
		}

	});

});
		function Ktra(method){
			var chkRadio_Nam = document.getElementById("maleRadio");
			var chkRadio_Nu = document.getElementById("femaleRadio");
			if(chkRadio_Nam.checked)
			{
				document.getElementById("registration_form").action= "DangkyController";
				document.getElementById("registration_form").method= method;
				document.getElementById("registration_form").submit();
			}
			if(chkRadio_Nu.checked)
			{
				document.getElementById("registration_form").action= "DangkyController";
				document.getElementById("registration_form").method= "get";
				document.getElementById("registration_form").submit();
			}
			
		}
			
</script>
<title>Insert title here</title>
</head>
<body>
			<jsp:include page= "Header.jsp"/>
			<jsp:include page= "Menu.jsp"/>
			<jsp:include page= "image_run.jsp"/>			  
			  
			  <div class="container">
			  <div class= "row">
			  
 			<div class="col-sm-8">
			<div class="container" style="width:100%; border-radius: 10px;background: rgba(140, 180, 199, 0.24);margin-top:9%;" >
           	<form   id = "registration_form" class="form-horizontal"  >
               <h2>Đăng ký khóa học</h2>    
               
               
               <div class="form-group" >
                   <label for="CourseName" class="col-sm-3 control-label">Khóa học</label>
                   <div class="col-sm-9">
                      <select class="form-control" name="ChonKhoaHoc">
                      			<c:forEach items = "${listCourses}" var= "l">
                      					<option  value= "${ l.courseID}">${l.courseName}</option>
                      					
                      			</c:forEach>
                      </select>
                   </div>
               </div>			
               <div class="form-group" >
                   <label for="firstName" class="col-sm-3 control-label">Họ và tên</label>
                   <div class="col-sm-9">
                       <input name="HoVaTen" type="text" id="firstname"  class="form-control" >
                    	<span class="error_form" id="firstname_error_message"></span>
                   </div>
               </div>
               
               <div class="form-group">
                   <label for="email" class="col-sm-3 control-label">Email</label>
                   <div class="col-sm-9">
                       <input name="Email" type="text" id="email"  class="form-control">
                       <span class="error_form" id="email_error_message"></span>
                   </div>
               </div>
               
               <div class="form-group">
                   <label for="DoiTuongHoc" class="col-sm-3 control-label">Bạn hiện là:&nbsp;</label>
                   <div class=" col-sm-9">
                       <select name="ChonDoiTuong" id="DoiTuongHoc" class="form-control">
                       			<option value="1">--Chọn đối tượng--</option>
                       			<option value="2">Sinh viên</option>
                       			<option value="3">Đã tốt nghiệp, đang tìm việc</option>
                       			<option value="4">Đang đi làm</option>
                       			<option value="5">Khác</option>
                       </select>
                   </div>
               </div>
               
               
               <div class="form-group">
                   <label for="birthDate" class="col-sm-3 control-label">Ngày Sinh</label>
                   <div class="col-sm-9">
                       <input name="NgaySinh" type="date" id="birthDate" class="form-control">
                   </div>
               </div>
               
                <div class="form-group">
                   <label for="phone" class="col-sm-3 control-label">Điện Thoại</label>
                   <div class="col-sm-9">
                       <input name="DienThoai" type="text" id="phone" class="form-control">
                       <span class="error_form" id="phone_error_message"></span>
                   </div>
               </div>
               
               <div class="form-group">
                   <label for="country" class="col-sm-3 control-label">Quê Quán</label>
                   <div class="col-sm-9">
                       <select name="QueQuan" id="country" class="form-control">
                           <option onclick="123();">Hà Nội</option>
                           <option>Hồ Chí Minh</option>
                    		<option>Cần Thơ</option>
						<option>Đà Nẵng</option>
						<option>Hải Phòng</option>
                         	<option>An Giang</option>
						<option>Bà Rịa - Vũng Tàu</option>
						<option>Bắc Giang</option>
						<option>Bắc Kạn</option>
						<option>Bạc Liêu</option>
						<option>Bắc Ninh</option>
						<option>Bến Tre</option>
						<option>Bình Định</option>
						<option>Bình Dương</option>
						<option>Bình Phước</option>
						<option>Bình Thuận</option>
						<option>Cà Mau</option>
						<option>Cao Bằng</option>
						<option>Đắk Lắk</option>
						<option>Đắk Nông</option>
						<option>Điện Biên</option>
						<option>Đồng Nai</option>
						<option>Đồng Tháp</option>
						<option>Gia Lai</option>
						<option>Hà Giang</option>
						<option>Hà Nam</option>
						<option>Hà Tĩnh</option>
						<option>Hải Dương</option>
						<option>Hậu Giang</option>
						<option>Hòa Bình</option>
						<option>Hưng Yên</option>
						<option>Khánh Hòa</option>
						<option>Kiên Giang</option>
						<option>Kon Tum</option>
						<option>Lai Châu</option>
						<option>Lâm Đồng</option>
						<option>Lạng Sơn</option>
						<option>Lào Cai</option>
						<option>Long An</option>
						<option>Nam Định</option>
						<option>Nghệ An</option>
						<option>Ninh Bình</option>
						<option>Ninh Thuận</option>
						<option>Phú Thọ</option>
						<option>Quảng Bình</option>
						<option>Quảng Nam</option>
						<option>Quảng Ngãi</option>
						<option>Quảng Ninh</option>
						<option>Quảng Trị</option>
						<option>Sóc Trăng</option>
						<option>Sơn La</option>
						<option>Tây Ninh</option>
						<option>Thái Bình</option>
						<option>Thái Nguyên</option>
						<option>Thanh Hóa</option>
						<option>Thừa Thiên Huế</option>
						<option>Tiền Giang</option>
						<option>Trà Vinh</option>
						<option>Tuyên Quang</option>
						<option>Vĩnh Long</option>
						<option>Vĩnh Phúc</option>
						<option>Yên Bái</option>
						<option>Phú Yên</option>
						
						
                       </select>
                   </div>
               </div> <!-- /.form-group -->
               <div class="form-group">
                   <label class="control-label col-sm-3">Giới Tính</label>
                   <div class="col-sm-6">
                       <div class="row">
                           <div class="col-sm-4">
                               <label class="radio-inline">
                                   <input type="radio" name="sex" id="femaleRadio" value="Female">Nữ
                               </label>
                           </div>
                           <div class="col-sm-4">
                               <label class="radio-inline">
                                   <input type="radio" name="sex" id="maleRadio" value="Male">Nam
                               </label>
                           </div>
                           <div class="col-sm-4">
                               <label class="radio-inline">
                                   <input type="radio" name="sex" id="uncknownRadio" value="Unknown">Khác                                    
                               </label>
                           
                           </div>
                       </div>
                   </div>
                  
               </div> <!-- /.form-group -->
                 <span class="error_form" id="sex_error_message" style="margin-left : 26%"></span>
               
             <br>
             <br>
               <div class="form-group">
                   <div class="col-sm-9 col-sm-offset-3">
                       <button onclick="Ktra('Post')"  type="submit" id ="submit" class="btn btn-primary btn-block">Đăng Ký</button>
                       <span class="error_form" id="form_error_submit"></span>
                   </div>
               </div>
           </form> <!-- /form -->
       </div> <!-- ./container -->
       </div>
       <div class= "col-sm-4">
			  <div class="form-horizontal"  style=" background: #f5f5f5	;text-align: center;color: rgba(0,65,255,0.94);margin-top:10%;">
				<ul style=" color: #333;font-size: 20px;">
					<li><a href="http://itute.ocs.opusinteractive.io/TrangChu.jsp"target="_blank">Trang Chủ</a></li>
					<li><a href="http://itute.ocs.opusinteractive.io/GioiThieuTT.jsp" >Giới Thiệu</a></li>
					<li><a href="http://itute.ocs.opusinteractive.io/Footer.jsp">Khóa Học</a></li>
				</ul>
				<img src="img/hotline.jpg" style="width:90%;">
				<hr style="width:85%"/>
				<h3>0971.140.697</h3>
				<h3>0971.140.698</h3>
				
 			</div>
 	</div>        
	</div>
	</div>
	
		<jsp:include page= "footer_cuoitrang.jsp"/>
		
</body>
</html>