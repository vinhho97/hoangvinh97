<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html> 
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Insert title here</title>
		<link href ="css/style.css" rel = "stylesheet" type = "text/css"> 
		<link rel="stylesheet" type="text/css" href="boostrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="js/jquery-3.2.1.min.js">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script type="text/javascript">
		function getInfo(){
			var flag = 1;
			var HoTen=document.getElementById("HoTen");
			var Email=document.getElementById("Email");
			var email= Email.value;
			var TieuDe=document.getElementById("TieuDe");
			var NoiDung=document.getElementById("NoiDung");
			
			if(HoTen.value==""){
				flag = 0;
				HoTen.style.border = "1px solid red";
			}
			else{
				flag = 1;
				HoTen.style.border = "1px solid grey";
			}
			var re = (/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
			if(!re.test(email)){
				flag = 0;
				Email.style.border = "1px solid red";
			}
			else{
				flag = 1;
				Email.style.border = "1px solid grey";
			}
			if(TieuDe.value==""){
				flag = 0;
				TieuDe.style.border = "1px solid red";
			}
			else{
				flag = 1;
				TieuDe.style.border = "1px solid grey";
			}
			if(NoiDung.value==""){
				flag = 0;
				NoiDung.style.border = "1px solid red";
			}
			else{
				flag = 1;
				NoiDung.style.border = "1px solid grey";
			}
			if(flag=="1")
			{
				document.getElementById("frmGopY").action = "LienHeGopYController";
				document.getElementById("frmGopY").submit();
			}
		}
		function intialize(){
			var mapProp={
					center:myCenter,
					zoom:12,
					scrollwheel:false,
					draggable: false,
					mapTypeId:google.maps.MapTypeId.ROADMAP
			};
		}
		var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
		</script>
</head>

<body>
			<jsp:include page= "Header.jsp"/>
			<jsp:include page= "Menu.jsp"/>
			<jsp:include page= "image_run.jsp"/>
			<div class="container">
				<div class="row">
					<div class="col-sm-4" style="margin-top: 5%;">
							<div class="panel panel-default">
								<div class = "panel-body">
									<font size="4" style="margin-left:20%;">
										<b>THÔNG TIN LIÊN HỆ</b>
									</font>
								</div>
							</div>
							<div class="info-box">
                          		<p><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;Số 1 Võ Văn Ngân, Quận Thủ Đức, TPHCM</p>
                          		<p><span class="fa fa-phone"></span>&nbsp;&nbsp;(+84.8) 38960987 (Tư vấn khóa học)</p>
                          		<p><span class="fa fa-phone"></span>&nbsp;&nbsp;(+84.8) 3868868 (Hỗ trợ kỹ thuật)</p>
                          		<p><span class="fa fa-phone"></span>&nbsp;&nbsp;(+84.8) 3868257(Góp ý/Khiếu nại)</p>
                          		<p><span class="fa fa-envelope"></span>&nbsp;&nbsp;itc@hcmute.edu.vn</p>	                          		
							</div>
					</div>
					<div class="col-sm-8 " style="margin-top: 5%;" >
								<h2>GỬI Ý KIẾN</h2>						
						<div style="margin-top:3%;">
							<form id = "frmGopY">
								<div class="col-sm-12 well">
									<div class="row">
										<div class="col-sm-6 ">
											<label >Họ tên*</label>
											<input type="text" name="HoTen" Id="HoTen" class="form-control">
										</div>
										<div class="col-sm-6">
											<label for="email">Email*</label>
											<input type="text" name="Email" Id= "Email"  class="form-control">
										</div>
									</div>					
									<div class="form-group">
										<label>Tiêu đề*</label>
										<textarea name="TieuDe" Id="TieuDe"  rows="2" class="form-control"></textarea>
									</div>	
									<div class="form-group">
										<label>Nội dung*</label>
										<textarea name="NoiDung" Id="NoiDung"  rows="6" class="form-control"></textarea>
									</div>	
					
                                    <button onclick = "getInfo(); return false" type="submit" class="btn btn-success btn-sm" style="width:50px; height:30px; float:right;">Gửi</button>
                        			
								</div>
							</form> 
							</div>
							</div>
				</div>
				<div id="googleMap" style="heigh:400px; width:100%;"></div>
				</div>					
							
			<jsp:include page= "footer_cuoitrang.jsp"/>
</body>
</html>