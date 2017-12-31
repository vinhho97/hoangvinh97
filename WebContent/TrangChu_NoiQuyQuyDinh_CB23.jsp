<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html> 
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Insert title here</title>
		<link href ="css/style.css" rel = "stylesheet" type = "text/css"> 
	<script type="text/javascript">
	</script>

</head>
<body>
		<jsp:include page= "Header.jsp"/>
		<jsp:include page= "Menu.jsp"/>
		
		<div class = "container-fluid" style="margin-top:-1.5%;">
			<div class="row">
				<div class= "col-sm-8" style="margin-left:0%;">
					
					<div class= "container-fluid">
						<div class="row">
						<div class="panel panel-default" style="width: 100%;margin-left:;">
						<div class="panel-body" style="width: 100%;">
							<h3><font face="Times New Roman">DANH SÁCH PHÒNG HỌC LỚP CB23</font></h3>
						</div>
						</div>
						<div style="width: 100%; margin-top: -3%;margin-left :0px;">
						<img  src = "img/QuyDinh_NoiQuy3.PNG">						
						</div>
				</div>
				</div>
				</div>
				<div class="col-sm-3">
					<div class="panel panel-default">
						<div class="panel-heading titleRight">
							<b style="color:red;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							DÒNG SỰ KIỆN
							</b>
						</div>
						<div class= "panel-body">
							<ul style="margin-left:-10%;">
								<li><small><a href="http://itute.ocs.opusinteractive.io/TrangChu_DongSuKien_HoiThaoIOT.jsp" title="Lịch thi và danh sách phòng thi lớp CNTT cơ bản CB25, CB26 ngày 29/10/2017.">HỘI THẢO : KHỞI ĐỘNG CUỘC THI IOT VIETNAM 2017
								<img style="width:40px;height:40px;" src="img/new_icon.gif"></a></small></li>
								<li><small><a href="http://itute.ocs.opusinteractive.io/TrangChu_DongSuKien_6GiaiPhap.jsp" title="Lịch thi và danh sách phòng thi lớp CNTT cơ bản CB27, CB28 ngày 28/10/2017.">THỦ TƯỚNG CHỈ RA 6 GIẢI PHÁP ĐỂ VIỆT NAM BẮT KỊP CÁCH MẠNG 4.0
								<img style="width:40px;height:40px;" src="img/new_icon.gif"></a></small></li>
								<li><small><a href="http://itute.ocs.opusinteractive.io/TrangChu_DongSuKien_GiangSinhVang_NganQuaTang.jsp" title="Kết quả thi chứng chỉ CNTT cơ bản lần 2 ngày 14/10/2017.">GIÁNG SINH VÀNG - NGÀN QUÀ TẶNG
								</a></small></li>
								<li><small><a href="http://itute.ocs.opusinteractive.io/TrangChu_DongSuKien_LeKyNiem20-11.jsp" title="Thông báo chiêu sinh tháng 11/2017.">LỄ KỸ NIỆM NGÀY NHÀ GIÁO VIỆT NAM 20/11
								</a></small></li>
							</ul>
						</div>
					</div>
					<div class="panel panel-default" style="margin-top:-7%;">
						<div class="panel-heading titleRight">
							<b style="color : red;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							HỖ TRỢ TRỰC TUYẾN
							</b>
						</div>
						<div class="panel-body">
							
								<small><a>
								<img src="img/icon_nguoii.png" style= " width:20px;height:20px;">&nbsp;&nbsp;&nbsp;
									<span>Nguyễn Văn B</span>
								</a></small><br>
								<small><a>
										<img style= " width:20px;height:20px;" src="img/icon_dienthoai.jpg">&nbsp;&nbsp;&nbsp;
										<span>0128.265.2689</span>
								</a></small><br>
									<small><a>
										<img src="img/icon_nguoii.png" style= " width:20px;height:20px;">&nbsp;&nbsp;&nbsp;
										<span>Nguyễn Văn C</span>
									</a></small><br>
								<small><a>
										<img style="width:20px;height:20px;" src="img/icon_email.jpg">&nbsp;&nbsp;&nbsp;
										<span>TuanTienTi@gmail.com</span>
								</a></small>
								<img style="width:100%; height: 30%; margin-left:0%;" src="img/anh_ttth.JPG">
						</div>					
					</div>
					
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-8">
					<div class="panel">
					<div class="panel-body">
					 <h4><strong>Các tin khác</strong></h4>
					<ul class="older">                                                                                                   
                <li><small><a href="http://itute.ocs.opusinteractive.io/TrangChu_NoiQuyQuyDinh_CB31.jsp">Danh sách phòng học lớp CNTT_CB31 (Tối 246) và CB32 (Tối 357) khai giảng ngày 09,10/10/2017.</a>
											</small></li>
										<li><small><a href="http://itute.ocs.opusinteractive.io/TrangChu_NoiQuyQuyDinh_CB27.jsp">Danh sách phòng học Lớp CB27 (tối 246) và CB28 (tối 357) khai giảng ngày 16,17/08/2017.
											</a></small></li>
										<li><small><a href="http://itute.ocs.opusinteractive.io/TrangChu_NoiQuyQuyDinh_CB23.jsp">Danh sách phòng học các lớp CB23 (tối 246), CB24 (tối 357), CB25 (T7), CB26 (CN) khai giảng ngày 31/07, 01,05,06/08/2017.
											</a></small></li>
                      </ul>					
                      </div>
					</div>
				</div>
			</div>
			
		</div>
		<jsp:include page= "footer_cuoitrang.jsp"/>
</body>
</html>