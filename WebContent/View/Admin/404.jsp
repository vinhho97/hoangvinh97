<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ quản trị</title>
		<link rel="stylesheet" href="Template/Backend/assets/css/bootstrap.min.css" />
		
		<!-- font -->
		<link rel="stylesheet" href="Template/Backend/font/font-awesome.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/css/colorbox.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
		<link rel="stylesheet" href="Template/Backend/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/css/ace-rtl.min.css" />
		<script src="Template/Backend/assets/js/ace-extra.min.js"></script>
		
		<style type="text/css">
		
			.paddingtop-image
			{
				 padding-top: 75px;
			}
		
		</style>
</head>
<body class="no-skin">
		<!-- Header -->
			<jsp:include page="Headeradmin.jsp"/>
		<!-- End Header -->
		
		<div class="navbar-container ace-save-state" id="navbar-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>
			
			<!-- Begin menu -->
				<jsp:include page="Menu.jsp"/>
			<!-- End menu -->
			
			
			<!-- Begin Content -->
			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="Adminforward">Trang chủ</a>
							</li>
							
						</ul><!-- /.breadcrumb -->

					</div>
					<div class="page-content">
							
							<div class="row" >
								<div class="col-xs-12">
								<div class="error-container">
									<div class="well">
										<h1 class="grey lighter smaller">
											<span class="blue bigger-125">
												<i class="ace-icon fa fa-sitemap"></i>
												404
											</span>
											Page Not Found
										</h1>

										<hr />
										<h3 class="lighter smaller">We looked everywhere but we couldn't find it!</h3>

										<div>
											<form class="form-search">
												<span class="input-icon align-middle">
													<i class="ace-icon fa fa-search"></i>

													<input type="text" class="search-query" placeholder="Give it a search..." />
												</span>
												<button class="btn btn-sm" type="button">Go!</button>
											</form>

											<div class="space"></div>
											<h4 class="smaller">Try one of the following:</h4>

											<ul class="list-unstyled spaced inline bigger-110 margin-15">
												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													Re-check the url for typos
												</li>

												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													Read the faq
												</li>

												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													Tell us about it
												</li>
											</ul>
										</div>

										<hr />
										<div class="space"></div>

										<div class="center">
											<a href="Homeforward" class="btn btn-grey">
												<i class="ace-icon fa fa-arrow-left"></i>
												Go Back
											</a>

											
										</div>
									</div>
								</div>		
																	</div>
							
					</div>
				</div>
			</div>
			<!-- /.main-content -->
			<!-- End Content -->
			
			
			<!-- Begin footer -->
			
				<jsp:include page="Footeradmin.jsp"/>
			
			<!-- end footer -->
		
</body>
</html>