<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href ="css/style.css" rel = "stylesheet" type = "text/css">
<link rel="stylesheet" type="text/css" href="boostrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="js/jquery-3.2.1.min.js">
<title>Insert title here</title>
</head>
	<body>
			<jsp:include page= "Header.jsp"/>
			<jsp:include page= "Menu.jsp"/>
			<jsp:include page= "image_run.jsp"/>
			<div class="container">
				<div class="row">
				<div class="panel panel-default">
					<div class="panel-body" style="text-align: center;">
						<h2>GIỚI THIỀU VỀ TRUNG TÂM ĐÀO TẠO TIN HỌC</h2>
					</div>
				</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-1">
					</div>
					<div class="col-sm-9">		
					<jsp:include page="NoiDung_GioiTieuTT.jsp"></jsp:include>
					</div>
					<div class="col-sm-2"></div>
					</div>
				</div>
				
			<jsp:include page= "footer_cuoitrang.jsp"/>
	</body>
</html>