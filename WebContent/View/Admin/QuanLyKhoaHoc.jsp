<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8"%> --%>
    
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%> --%>
    
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý danh sách lớp học</title>
		
<!-- 		<link rel="stylesheet" href="Template/Backend/assets/css/bootstrap.min.css" /> -->
<!-- 		<!-- font -->
<!-- 		<link rel="stylesheet" href="Template/Backend/font/font-awesome.min.css" /> -->
<!-- 		<link rel="stylesheet" href="Template/Backend/assets/font-awesome/4.5.0/css/font-awesome.min.css" /> -->
<!-- 		<link rel="stylesheet" href="Template/Backend/assets/css/colorbox.min.css" /> -->
<!-- 		<link rel="stylesheet" href="Template/Backend/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" /> -->
<!-- 		<link rel="stylesheet" href="Template/Backend/assets/css/ace-skins.min.css" /> -->
<!-- 		<link rel="stylesheet" href="Template/Backend/assets/css/ace-rtl.min.css" /> -->
<!-- 		<script src="Template/Backend/assets/js/ace-extra.min.js"></script> -->
<!-- 		<script src="Template/js/jquery-3.1.1.min.js"></script> -->
		
				<link rel="stylesheet" href="Template/Backend/assets/css/bootstrap.min.css" />
		
		<!-- font -->
		<link rel="stylesheet" href="Template/Backend/font/font-awesome.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		
		<link rel="stylesheet" href="Template/Backend/assets/css/colorbox.min.css" />

		<link rel="stylesheet" href="Template/Backend/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<link rel="stylesheet" href="Template/Backend/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/css/ace-rtl.min.css" />

		<script src="Template/Backend/assets/js/ace-extra.min.js"></script>
		
		<script src="Template/js/jquery-3.1.1.min.js"></script>
		
		
		 <script language="javascript">
		 
		 function isNumeric(num){
		
			  return isNaN(num)
			}
		 
            $(document).ready(function(){
                $('#form_insertcourse').submit(function(){
                     
                	var coursename    = $.trim($('#coursename').val());
                    var coursetime    = $.trim($('#coursetime').val());
                    var coursemoney = $.trim($('#coursemoney').val());
                    // BƯỚC 2: Validate dữ liệu
                    // Biến cờ hiệu
                    var flag = true;
             
                   
                    if (coursename == '' || coursename.length < 10){
                        $('#coursename_error').text('Tên khóa học phải lớn hơn 10 ký tự');
                        flag = false;
                    }
                    else{
                        $('#coursename_error').text('');
                    }
             
                   
             
                 
                    if (coursetime == '' || isNumeric(coursetime)){
                        $('#coursetime_error').text('Nhập vào số và không được để trống');
                        flag = false;
                    }
                    else{
                        $('#coursetime_error').text('');
                    }
                    
                    if (coursemoney == '' || isNumeric(coursemoney)){
                        $('#coursemoney_error').text('Nhập vào số và không được để trống');
                        flag = false;
                    }
                    else{
                        $('#coursemoney_error').text('');
                    }
             
                    return flag;
                     
                });
            });
        </script>
</head>
<body class="no-skin">	
	<!-- Header -->
			<jsp:include page="Headeradmin.jsp"/>
		<!-- End Header -->
		
		<div class="main-container ace-save-state" id="main-container">
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
							
							<li>
								<a class="active">Quản lý danh sách khóa học</a>
							</li>
							
						</ul><!-- /.breadcrumb -->

					</div>
					<div class="page-content">
							<div class="row" >
								<div class="col-xs-12">
									<div class="row">
										<div class="col-xs-12">
										<label class="block clearfix">
										<%=request.getAttribute("mscourse")!=null?request.getAttribute("mscourse"):" "%>
										</label>
										<form id="form" action = "SuaKhoaHocController" method = "POST">
												
											<label for="usrname"><span class="glyphicon glyphicon-user"></span> ID</label>
	              							<input type="text" id = "Courseid" name = "CourseID">
	              							<label for="usrname"><span class="glyphicon glyphicon-user"></span>Tên Khóa Học</label>
	              							<input type="text" id = "Coursename" name = "CourseName">
	              							<label for="usrname"><span class="glyphicon glyphicon-user"></span>Thời Lượng</label>
	              							<input type="text" id ="Coursetime" name = "CourseTime">
	              							<label for="usrname"><span class="glyphicon glyphicon-user"></span>Học Phí</label>
	              							<input type="text" id ="Coursemoney" name = "CourseMoney">
	              							 <button type="submit" class="btn btn-info" onclick = "EditRow();">
													Lưu</button>
										</form>
											<table id="table" class="table  table-bordered table-hover">
												<thead>
													<tr>
														<th class="center">
														    ID
														</th>
														<th class="center">
															Tên khóa
														</th>
														<th class="center">
															Thời lượng
														</th>
														<th class="center">
															Học phí
														</th>
														
														<th class="sorting_disabled" rowspan="1" colspan="1" aria-label=""></th>
															
														
													</tr>
												</thead>
												<tbody>
													
													<c:forEach items="${listcourse}" var ="list">
														<tr>
															<td class="center" >
																${list.courseID}
															</td>
															<td class="center" >
																${list.courseName}
															</td>
															<td class="center" >
																${list.courseTime}
															</td>
															<td class="center">
																${list.coursemoney}
															</td>
															
															
															
															<td class="center">
																<div class="hidden-sm hidden-xs action-buttons">
																	
																	<a class="red" href="XoaKhoaHocController?cid=${list.courseID}">
																	<i class="ace-icon fa fa-trash-o bigger-130">
																	</i>
																	</a>
																	</div>
															</td>
															
														</tr>
													</c:forEach>
													
												</tbody>
											</table>
											
											
											
											
											
												<div class="row">
													<div class="col-xs-6">
												 <button type="button" class="btn btn-default btn-lg" id="myBtn">Thêm Khóa Học</button>
												 
												<i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right"></i>
												
												</button>
													</div>
													<div class="col-xs-6">
													<div class="dataTables_paginate paging_simple_numbers" id="dynamic-table_paginate">
														<ul class = "pagination">
			
														 	<c:if test="${numberpage == 1}">
															   <li class = "disabled"><a href = "">&laquo;</a></li>
															   <li><a href = "QuanLyKhoaHocController?pageid=1">1</a></li>
															   <li><a href = "QuanLyKhoaHocController?pageid=2">2</a></li>
															   <li><a href = "QuanLyKhoaHocController?pageid=${numberpage+1}">&raquo;</a></li>
														   </c:if>
														   <c:if test="${numberpage == maxpageid}">
															   <li><a href = "QuanLyKhoaHocController?pageid=${numberpage-1}">&laquo;</a></li>
															   <li><a href = "QuanLyKhoaHocController?pageid=1">1</a></li>
															   <li><a href = "QuanLyKhoaHocController?pageid=2">2</a></li>
															   <li class = "disabled"><a href = "">&raquo;</a></li>
														   </c:if>
														   
														   <c:if test="${numberpage > 1 && numberpage < maxpageid}">
															   <li><a href = "QuanLyKhoaHocController?pageid=${numberpage-1}">&laquo;</a></li>
															   <li><a href = "QuanLyKhoaHocController?pageid=1">1</a></li>
															   <li><a href = "QuanLyKhoaHocController?pageid=2">2</a></li>
															   <li><a href = "QuanLyKhoaHocController?pageid=${numberpage+1}">&raquo;</a></li>
														   </c:if>
														   
														</ul>
													</div>
												</div>
												</div>
										</div>
									</div>
								
								</div>
							</div>
					</div>
				</div>
			</div><!-- /.main-content -->
			<!-- End Content -->
			
			
			<!-- Begin footer -->
			
				<jsp:include page="Footeradmin.jsp"/>
			
			<!-- end footer -->


			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
		
				
<div class="container">
 
  <!-- Trigger the modal with a button -->
 

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Thêm Khóa Học</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form action="ThemKhoaHocController" method = "POST" id="form_insertcourse">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> ID</label>
              <input type="text" class="form-control" name="courseid" id="courseid" placeholder="Nhập vào mã khóa học">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span>Tên khóa học</label>
              <input type="text" class="form-control" name="coursename" id="coursename" placeholder="Nhập vào tên khóa học">
               <span id="coursename_error"></span>
            </div>
           
         
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Thời Lượng Khóa</label>
				 <input type="text" class="form-control" name="coursetime" id ="coursetime" placeholder="">
				  <span id="coursetime_error"></span>
            </div>
              <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span>Học Phí</label>
              <input type="text" class="form-control" name="coursemoney" id ="coursemoney" placeholder="Nhập vào học phí">
               <span id="coursemoney_error"></span>
            </div>
            
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Xác Nhận</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        
        </div>
      </div>
      
    </div>
  </div> 
</div>
 
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>
	
<script>
	var table = document.getElementById('table'),rIndex;
	for(var i =0 ; i< table.rows.length;i++)
	{
		table.rows[i].onclick = function()
		{
			rIndex = this.rowIndex; 
			var courseid = this.cells[0].innerHTML;
			document.getElementById('Courseid').value = courseid.trim();		
			var coursename =  this.cells[1].innerHTML;
			document.getElementById('Coursename').value = coursename.trim();
			var coursetime = this.cells[2].innerHTML;
			document.getElementById('Coursetime').value = coursetime.trim();
			var coursemoney =  this.cells[3].innerHTML;
			document.getElementById('Coursemoney').value = coursemoney.trim();
		};
			
			
	}
	function EditRow()
    {
        
        table.rows[rIndex].cells[1].innerHTML = document.getElementById("Coursename").value;
        table.rows[rIndex].cells[2].innerHTML = document.getElementById("Coursetime").value;
        table.rows[rIndex].cells[3].innerHTML = document.getElementById("Coursemoney").value;

    }

</script>


		<script src="Template/Backend/assets/js/jquery-2.1.4.min.js"></script>

		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='Template/Backend/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="Template/Backend/assets/js/bootstrap.min.js"></script>

			<!-- page specific plugin scripts -->
		<script src="Template/Backend/assets/js/jquery.dataTables.min.js"></script>
		<script src="Template/Backend/assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="Template/Backend/assets/js/dataTables.buttons.min.js"></script>
		<script src="Template/Backend/assets/js/buttons.flash.min.js"></script>
		<script src="Template/Backend/assets/js/buttons.html5.min.js"></script>
		<script src="Template/Backend/assets/js/buttons.print.min.js"></script>
		<script src="Template/Backend/assets/js/buttons.colVis.min.js"></script>
		<script src="Template/Backend/assets/js/dataTables.select.min.js"></script>

		
		<script src="Template/Backend/assets/js/ace-elements.min.js"></script>
		<script src="Template/Backend/assets/js/ace.min.js"></script>

		
		<script type="text/javascript">
			jQuery(function($) {
				//initiate dataTables plugin
				var myTable = 
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  { "bSortable": false },
					  null, null,null, null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
					
					select: {
						style: 'multi'
					}
			    } );
			
				
				
				$.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';
				
				new $.fn.dataTable.Buttons( myTable, {
					buttons: [
					  {
						"extend": "colvis",
						"text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
						"className": "btn btn-white btn-primary btn-bold",
						columns: ':not(:first):not(:last)'
					  },
					  {
						"extend": "copy",
						"text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "csv",
						"text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "excel",
						"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "pdf",
						"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "print",
						"text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
						"className": "btn btn-white btn-primary btn-bold",
						autoPrint: false,
						message: 'This print was produced using the Print button for DataTables'
					  }		  
					]
				} );
				myTable.buttons().container().appendTo( $('.tableTools-container') );
				
				//style the message box
				var defaultCopyAction = myTable.button(1).action();
				myTable.button(1).action(function (e, dt, button, config) {
					defaultCopyAction(e, dt, button, config);
					$('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
				});
				
				
				var defaultColvisAction = myTable.button(0).action();
				myTable.button(0).action(function (e, dt, button, config) {
					
					defaultColvisAction(e, dt, button, config);
					
					
					if($('.dt-button-collection > .dropdown-menu').length == 0) {
						$('.dt-button-collection')
						.wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
						.find('a').attr('href', '#').wrap("<li />")
					}
					$('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
				});
			
				////
			
				setTimeout(function() {
					$($('.tableTools-container')).find('a.dt-button').each(function() {
						var div = $(this).find(' > div').first();
						if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
						else $(this).tooltip({container: 'body', title: $(this).text()});
					});
				}, 500);
				
				
				
				
				
				myTable.on( 'select', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
					}
				} );
				myTable.on( 'deselect', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
					}
				} );
			
			
			
			
				/////////////////////////////////
				//table checkboxes
				$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
				
				//select/deselect all rows according to table header checkbox
				$('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$('#dynamic-table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) myTable.row(row).select();
						else  myTable.row(row).deselect();
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
					var row = $(this).closest('tr').get(0);
					if(this.checked) myTable.row(row).deselect();
					else myTable.row(row).select();
				});
			
			
			
				$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
					e.stopImmediatePropagation();
					e.stopPropagation();
					e.preventDefault();
				});
				
				
				
				//And for the first simple table, which doesn't have TableTools or dataTables
				//select/deselect all rows according to table header checkbox
				var active_class = 'active';
				$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
					var $row = $(this).closest('tr');
					if($row.is('.detail-row ')) return;
					if(this.checked) $row.addClass(active_class);
					else $row.removeClass(active_class);
				});
			
				
			
				/********************************/
				//add tooltip for small view action buttons in dropdown menu
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
				
				
				
				
				/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				
			})
		</script>
</body>
</html>