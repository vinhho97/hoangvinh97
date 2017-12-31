<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Insert title here</title>
		<link href ="css/style.css" rel = "stylesheet" type = "text/css"> 
		<link rel="stylesheet" type="text/css" href="boostrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="js/jquery-3.2.1.min.js">
		<script type="text/javascript">
		 
		 
		function getInfo(methodtype){
			
			
			var flag = 1;
			var user=document.getElementById("user");
			var pass=document.getElementById("pass");
			var chkRadio_HV = document.getElementById("radio_HV");
			var chkRadio_GV = document.getElementById("radio_GV");
			var chkRadio_TK = document.getElementById("radio_TK");
			var chkRadio_QL = document.getElementById("radio_QL");
			if(user.value==""){
				alert("Vui lòng nhập tài khoản");
				
				user.style.border = "1px solid red";
			}
			else{
				user.style.border = "1px solid grey";
			}
			if(pass.value==""){
				alert("Vui lòng nhập mật khẩu");
				flag = false;
				pass.style.border = "1px solid red";
			}
			else if(pass.value.length <8){
				alert("Mật khẩu phải có ít nhất 8 ký tự");
				
				
				pass.style.border = "1px solid red";

			}
			else{
				pass.style.border = "1px solid grey";
				
				
			}
			if(user.value!="" && pass.value!="" && pass.value.length>=8){	
				
				if(chkRadio_GV.checked){
					flag=0;
					document.getElementById("btnDangNhap").action= "GiangVienThongTinController";
					document.getElementById("btnDangNhap").method= methodtype;
					document.getElementById("btnDangNhap").submit();
				}
				if(chkRadio_TK.checked){
					flag=0;
					document.getElementById("btnDangNhap").action= "LoginServlet";
					document.getElementById("btnDangNhap").method= methodtype;
					document.getElementById("btnDangNhap").submit();
				}
				if(chkRadio_QL.checked){
					flag=0;
					document.getElementById("btnDangNhap").action= "Homeforward";
					document.getElementById("btnDangNhap").method= methodtype;
					document.getElementById("btnDangNhap").submit();
				}
				if(flag=="1")
				{
					alert("Bạn chưa chọn quyền");	
				}
			}
			
			
		}
		</script>
	</head>
	<body>		
		
	<jsp:include page= "Header.jsp"/>
		<jsp:include page= "Menu.jsp"/>
		<jsp:include page= "image_run.jsp"/>
	<div class="container-fluid"style="margin-top: -10%;" >
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default"style="border:10px solid #a8d3ff;">
                <div class="panel-heading"style="background: #a8d3ff ">
                    <span class="glyphicon glyphicon-lock"></span> Đăng nhập</div>
                <div class="panel-body">
                	<div id="cb_member"align="center">
                		<p>
                				
                			<label><input type="radio" name="optradio" id= "radio_GV">	Giáo viên</label>
                			<label><input type="radio" name="optradio" id= "radio_TK"> Thư ký</label>
                			<label><input type="radio" name="optradio" id= "radio_QL" > Quản lý</label>
                		</p>
                	</div>
                	</div>
                	<div class="panel-body">
                    <form class="form-horizontal" role="form" Id= "btnDangNhap">
                    <input type="hidden" id="RoleGV" name="RoleGV" value="GV">
                    <input type="hidden" id="RoleTK" name="RoleTK" value="TK">
                    <div class="form-group">
                        <label for="inputUsername3" class="col-sm-3 control-label">
                            Tên đăng nhập</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="user" id="user" placeholder="username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">
                            Mật khẩu</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" name="pass" id="pass" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-3">
                            <div class="checkbox-inline">
                                <label>
                                    <input type="checkbox"/>
                                    Nhớ mật khẩu
                                </label>
                            </div>
                        </div>
                    </div>
                    <h4 style="color: red"><%= request.getAttribute("msg") != null ? request.getAttribute("msg") : " " %></h4>
                    <div class="form-group last">
                        <div class="col-sm-offset-9 col-sm-9">
                            <button onclick = "getInfo('Post'); return false" type="submit" class="btn btn-success btn-sm">
                                Đăng nhập</button>
                        </div>
                    </div>                  
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>

					<jsp:include page= "footer_cuoitrang.jsp"/>

					
	</body>
</html>