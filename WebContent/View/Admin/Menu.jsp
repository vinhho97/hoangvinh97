<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="sidebar" class="sidebar responsive ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>
				
				<ul class="nav nav-list">
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text">Quản lý </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="QuanLyKhoaHocController?pageid=1">
									<i class="menu-icon fa fa-caret-right"></i>
									Quản Lý Khóa Học
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="QuanLyLopHocController?pageid=1">
									<i class="menu-icon fa fa-caret-right"></i>
									Quản Lý Lớp Học
								</a>

								<b class="arrow"></b>
							</li>
							
							<li class="">
								<a href="QuanLyHocVienController?pageid=1">
									<i class="menu-icon fa fa-caret-right"></i>
									Quản Lý Học Viên
								</a>

								<b class="arrow"></b>
							</li>
							
							<li class="">
								<a href="QuanLyGiaoVienController">
									<i class="menu-icon fa fa-caret-right"></i>
									Quản Lý Giáo Viên
								</a>

								<b class="arrow"></b>
							</li>
							
							
						</ul>
					</li>
					
				
					
				</ul>
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>
</body>
</html>