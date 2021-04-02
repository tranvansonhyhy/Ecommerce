<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function xem(ma) {
	$.ajax({
	    url: "http://localhost:8080/Ecommerce/admin/capnhatdonhang/",
	    contentType:"application/json",
	    type: "GET",
	   	data: {ma: ma},
	   	async:true,
	   	traditional:true,
	    success: function(data) {
	    	$('#tinhTrang').empty();
	    	$("#trangThaiThanhToan").empty();
	    	layTinhTrang();
	    	layTrangThai();
	    	$("#maDH").text(data.id);
	    	$("#Id").val(data.id);
	    	$("#tinhTrang").val(data.tinhTrang);
	    	$("#trangThaiThanhToan").val(data.trangThaiThanhToan);
	    	
	    },
	   	error:function(data){
	   		alert("Lỗi")
	   	}
	});
}

function layTinhTrang() {
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/Ecommerce/admin/laytinhtrang/",
		dataType : 'json',
		contentType : "application/json; charset=utf-8",
		async : true,
		traditional: true,
		success: function(lstTinhTrang){
			var chuoi ="";
			$.each(lstTinhTrang, function(key, value) {
				console.log(key)
				chuoi += "<option value='"+key+"'>"+value+"</option>"
			});
			$('#tinhTrang').append(chuoi);
		}
		
	})
}

function layTrangThai() {
	$.ajax({
		type : "GET",
		url : "http://localhost:8080/Ecommerce/admin/laytrangthai/",
		dataType : 'json',
		contentType : "application/json; charset=utf-8",
		async : true,
		traditional: true,
		success: function(lstTrangThai){
			var chuoi ="";
			$.each(lstTrangThai, function(key, value) {
				console.log(key)
				chuoi += "<option value='"+key+"'>"+value+"</option>"
			});
			$('#trangThaiThanhToan').append(chuoi);
		}
		
	})
}
</script>
<style type="text/css">
	#maDH{
		color: blue;
	}
	
	.lbl{
		color: black;
		font-weight: bold;
	}
</style>
</head>
<body>
	<c:url value="cap-nhat-don-hang" var="urlUpdate"/>
	<c:url value="chi-tiet-don-hang" var="urlChiTiet"/>
	<div class="content container-fluid">
		<!-- Page Header -->
		<div class="page-header">
			<div class="row align-items-center mb-3">
				<div class="col-sm mb-2 mb-sm-0">
					<h1 class="page-header-title">
						Danh đơn hàng <span class="badge badge-soft-dark ml-2">${lstHoaDon.size() }</span>
					</h1>

					<div class="mt-2">
						<a class="text-body mr-3" href="javascript:;" data-toggle="modal"
							data-target="#exportProductsModal"> <i
							class="tio-download-to mr-1"></i> Export
						</a> <a class="text-body" href="javascript:;" data-toggle="modal"
							data-target="#importProductsModal"> <i
							class="tio-publish mr-1"></i> Import
						</a>
					</div>
				</div>
			</div>
			<!-- End Row -->

			<!-- Nav Scroller -->
			<div class="js-nav-scroller hs-nav-scroller-horizontal">
				<span class="hs-nav-scroller-arrow-prev" style="display: none;">
					<a class="hs-nav-scroller-arrow-link" href="javascript:;"> <i
						class="tio-chevron-left"></i>
				</a>
				</span> <span class="hs-nav-scroller-arrow-next" style="display: none;">
					<a class="hs-nav-scroller-arrow-link" href="javascript:;"> <i
						class="tio-chevron-right"></i>
				</a>
				</span>

				<!-- Nav -->
				<ul class="nav nav-tabs page-header-tabs" id="pageHeaderTab"
					role="tablist">
					<li class="nav-item"><a class="nav-link active" href="#">Tất cả</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"
						tabindex="-1" aria-disabled="true">Đơn hoành thành</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"
						tabindex="-1" aria-disabled="true">Đơn đang sử lý</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"
						tabindex="-1" aria-disabled="true">Đơn chưa thanh toán</a></li>
				</ul>
				<!-- End Nav -->
			</div>
			<!-- End Nav Scroller -->
		</div>
		<!-- End Page Header -->

		<div class="row justify-content-end mb-3">
			<div class="col-lg">
				<!-- Datatable Info -->
				<div id="datatableCounterInfo" style="display: none;">
					<div class="d-sm-flex justify-content-lg-end align-items-sm-center">
						<span
							class="d-block d-sm-inline-block font-size-sm mr-3 mb-2 mb-sm-0">
							<span id="datatableCounter">0</span> Selected
						</span> <a class="btn btn-sm btn-outline-danger mb-2 mb-sm-0 mr-2"
							href="javascript:;"> <i class="tio-delete-outlined"></i>
							Xóa
						</a>
					</div>
				</div>
				<!-- End Datatable Info -->
			</div>
		</div>
		<!-- End Row -->

		<!-- Card -->
		<div class="card">
			<!-- Header -->
			<div class="card-header">
				<div
					class="row justify-content-between align-items-center flex-grow-1">
					<div class="col-md-4 mb-3 mb-md-0">
						<form>
							<!-- Search -->
							<div class="input-group input-group-merge input-group-flush">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="tio-search"></i>
									</div>
								</div>
								<input id="datatableSearch" type="search" class="form-control"
									placeholder="Từ khóa tìm kiếm" aria-label="Search users">
							</div>
							<!-- End Search -->
						</form>
					</div>

					<div class="col-auto">
						<!-- Unfold -->
						<div class="hs-unfold mr-2">
							
						</div>
						<!-- End Unfold -->

						<!-- Unfold -->
						<div class="hs-unfold">
							<a class="js-hs-unfold-invoker btn btn-white" href="javascript:;"
								data-hs-unfold-options='{
                       "target": "#showHideDropdown",
                       "type": "css-animation"
                     }'>
								<i class="tio-table mr-1"></i> Danh sách cột <span
								class="badge badge-soft-dark rounded-circle ml-1">6</span>
							</a>

							<div id="showHideDropdown"
								class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right dropdown-card"
								style="width: 15rem;">
								<div class="card card-sm">
									<div class="card-body">
										<div
											class="d-flex justify-content-between align-items-center mb-3">
											<span class="mr-2">Sản phẩm</span>

											<!-- Checkbox Switch -->
											<label class="toggle-switch toggle-switch-sm"
												for="toggleColumn_product"> <input type="checkbox"
												class="toggle-switch-input" id="toggleColumn_product"
												checked=""> <span class="toggle-switch-label">
													<span class="toggle-switch-indicator"></span>
											</span>
											</label>
											<!-- End Checkbox Switch -->
										</div>

										<div
											class="d-flex justify-content-between align-items-center mb-3">
											<span class="mr-2">Hãng SX</span>

											<!-- Checkbox Switch -->
											<label class="toggle-switch toggle-switch-sm"
												for="toggleColumn_type"> <input type="checkbox"
												class="toggle-switch-input" id="toggleColumn_type"
												checked=""> <span class="toggle-switch-label">
													<span class="toggle-switch-indicator"></span>
											</span>
											</label>
											<!-- End Checkbox Switch -->
										</div>

										<div
											class="d-flex justify-content-between align-items-center mb-3">
											<span class="mr-2">Vendor</span>

											<!-- Checkbox Switch -->
											<label class="toggle-switch toggle-switch-sm"
												for="toggleColumn_vendor"> <input type="checkbox"
												class="toggle-switch-input" id="toggleColumn_vendor"
												checked="">
												<span class="toggle-switch-label"> <span
													class="toggle-switch-indicator"></span>
											</span>
											</label>
											<!-- End Checkbox Switch -->
										</div>

										<div
											class="d-flex justify-content-between align-items-center mb-3">
											<span class="mr-2">Stocks</span>

											<!-- Checkbox Switch -->
											<label class="toggle-switch toggle-switch-sm"
												for="toggleColumn_stocks"> <input type="checkbox"
												class="toggle-switch-input" id="toggleColumn_stocks"
												checked=""> <span class="toggle-switch-label">
													<span class="toggle-switch-indicator"></span>
											</span>
											</label>
											<!-- End Checkbox Switch -->
										</div>

										<div
											class="d-flex justify-content-between align-items-center mb-3">
											<span class="mr-2">SKU</span>

											<!-- Checkbox Switch -->
											<label class="toggle-switch toggle-switch-sm"
												for="toggleColumn_sku"> <input type="checkbox"
												class="toggle-switch-input" id="toggleColumn_sku" checked="">
												<span class="toggle-switch-label"> <span
													class="toggle-switch-indicator"></span>
											</span>
											</label>
											<!-- End Checkbox Switch -->
										</div>

										<div
											class="d-flex justify-content-between align-items-center mb-3">
											<span class="mr-2">Price</span>

											<!-- Checkbox Switch -->
											<label class="toggle-switch toggle-switch-sm"
												for="toggleColumn_price"> <input type="checkbox"
												class="toggle-switch-input" id="toggleColumn_price"
												checked=""> <span class="toggle-switch-label">
													<span class="toggle-switch-indicator"></span>
											</span>
											</label>
											<!-- End Checkbox Switch -->
										</div>

										<div
											class="d-flex justify-content-between align-items-center mb-3">
											<span class="mr-2">Quantity</span>

											<!-- Checkbox Switch -->
											<label class="toggle-switch toggle-switch-sm"
												for="toggleColumn_quantity"> <input type="checkbox"
												class="toggle-switch-input" id="toggleColumn_quantity" checked="">
												<span class="toggle-switch-label"> <span
													class="toggle-switch-indicator"></span>
											</span>
											</label>
											<!-- End Checkbox Switch -->
										</div>

										<div class="d-flex justify-content-between align-items-center">
											<span class="mr-2">Variants</span>

											<!-- Checkbox Switch -->
											<label class="toggle-switch toggle-switch-sm"
												for="toggleColumn_variants"> <input type="checkbox"
												class="toggle-switch-input" id="toggleColumn_variants"
												checked=""> <span class="toggle-switch-label">
													<span class="toggle-switch-indicator"></span>
											</span>
											</label>
											<!-- End Checkbox Switch -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Unfold -->
					</div>
				</div>
				<!-- End Row -->
			</div>
			<!-- End Header -->

			<!-- Table -->
			<div class="table-responsive datatable-custom">
				<table id="datatable"
					class="table table-borderless table-thead-bordered table-nowrap table-align-middle card-table"
					data-hs-datatables-options='{
                     "columnDefs": [{
                        "targets": [0, 4, 9],
                        "width": "5%",
                        "orderable": false
                      }],
                     "order": [],
                     "info": {
                       "totalQty": "#datatableWithPaginationInfoTotalQty"
                     },
                     "search": "#datatableSearch",
                     "entries": "#datatableEntries",
                     "pageLength": 12,
                     "isResponsive": false,
                     "isShowPaging": false,
                     "pagination": "datatablePagination"
                   }'>
					<thead class="thead-light">
						<tr>
							<th scope="col" class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input id="datatableCheckAll" type="checkbox"
										class="custom-control-input"> <label
										class="custom-control-label" for="datatableCheckAll"></label>
								</div>
							</th>
							<th class="table-column-pl-0">Mã đơn hàng</th>
							<th>Ngày đặt</th>
							<th>Khách hàng</th>
							<th>Trạng thái thanh toán</th>
							<th>trạng thái đơn hàng</th>
							<th>Phương thức</th>
							<th>Tổng tiền</th>
							<th>Ngày cập nhật</th>
							<th>Actions</th>
						</tr>
					</thead>

					<tbody>
						<c:if test="${not empty lstHoaDon }">
							<c:forEach var="hd" items="${lstHoaDon }">
								<tr>
									<td class="table-column-pr-0">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="productsCheck1"> <label
												class="custom-control-label" for="productsCheck1"></label>
										</div>
									</td>
									<td class="table-column-pl-0"><a
										class="media align-items-center"
										href="${urlChiTiet }/${hd.id}">
											<div class="media-body">
												<h5 class="text-hover-primary mb-0">${hd.id }</h5>
											</div>
									</a></td>
									<td>
										<fmt:formatDate pattern="MM/dd/yyyy" value="${hd.ngayTao}" /></td>
									<td>${hd.hoTen}</td>
									<td><span
										class="badge badge-soft-success"> <span
											class="legend-indicator bg-success"></span>${hd.trangThaiThanhToan2.ten }
									</span></td>
									<td><span class="badge badge-soft-info ml-2 ml-sm-3">
											<span class="legend-indicator bg-info"></span>${hd.tinhTrang2.tenTinhTrang }
									</span></td>
									<td><span class="badge badge-soft-warning"> <span
											class="legend-indicator bg-warning"></span>${hd.phuongThucThanhToan2.ten }
									</span></td>
									<td><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${hd.tongTien }"/> đ</td>
									<td><fmt:formatDate pattern="MM/dd/yyyy" value="${hd.ngayCapNhat}" /></td>
									<td>
										<div class="btn-group" role="group">
											<a class="btn btn-sm btn-white" id="xem" onclick="xem(${hd.id })" href="javascript:void(0)" data-val=${hd.id }
											 data-toggle="modal" data-target="#myModal"> <i
												class="tio-edit"></i> Sửa
											</a>

											<!-- Unfold -->
											<div class="hs-unfold btn-group">
												<a
													class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
													href="javascript:;"
													data-hs-unfold-options='{
	                             "target": "#productsEditDropdown1",
	                             "type": "css-animation",
	                             "smartPositionOffEl": "#datatable"
	                           }'></a>

												<div id="productsEditDropdown1"
													class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
													<a class="dropdown-item" href="#"> <i
														class="tio-delete-outlined dropdown-item-icon"></i> Delete
													</a> <a class="dropdown-item" href="#"> <i
														class="tio-archive dropdown-item-icon"></i> Archive
													</a> <a class="dropdown-item" href="#"> <i
														class="tio-publish dropdown-item-icon"></i> Publish
													</a> <a class="dropdown-item" href="#"> <i
														class="tio-clear dropdown-item-icon"></i> Unpublish
													</a>
												</div>
											</div>
											<!-- End Unfold -->
										</div>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<!-- End Table -->

			<!-- Footer -->
			<div class="card-footer">
				<!-- Pagination -->
				<div
					class="row justify-content-center justify-content-sm-between align-items-sm-center">
					<div class="col-sm mb-2 mb-sm-0">
						<div
							class="d-flex justify-content-center justify-content-sm-start align-items-center">
							<span class="mr-2">Showing:</span>

							<!-- Select -->
							<select id="datatableEntries" class="js-select2-custom"
								data-hs-select2-options='{
                            "minimumResultsForSearch": "Infinity",
                            "customClass": "custom-select custom-select-sm custom-select-borderless",
                            "dropdownAutoWidth": true,
                            "width": true
                          }'>
								<option value="12" selected="">12</option>
								<option value="14">14</option>
								<option value="16">16</option>
								<option value="18">18</option>
							</select>
							<!-- End Select -->

							<span class="text-secondary mr-2">of</span>

							<!-- Pagination Quantity -->
							<span id="datatableWithPaginationInfoTotalQty"></span>
						</div>
					</div>

					<div class="col-sm-auto">
						<div class="d-flex justify-content-center justify-content-sm-end">
							<!-- Pagination -->
							<nav id="datatablePagination" aria-label="Activity pagination"></nav>
						</div>
					</div>
				</div>
				<!-- End Pagination -->
			</div>
			<!-- End Footer -->
		</div>
		<!-- End Card -->
	</div>
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<s:form action="${urlUpdate }" method="post" id="FormRegister"
					modelAttribute="hoaDon" enctype="multipart/form-data"
					acceptCharset="utf-8">
					<div class="modal-body">
						<h5 style="font-weight: bold; font-size: 18px;">
							Đơn hàng #<span class="sp" id="maDH"></span>
						</h5>
						<s:hidden path="Id"/>
						<br> <label></label> <label class="lbl">Trạng thái
							đơn hàng: </label> &nbsp;&nbsp;&nbsp;
						<s:select class="form-control" path="tinhTrang">
						
						</s:select>
						<br> <label class="lbl">Trạng thái thanh toán: </label>&nbsp;&nbsp;&nbsp;
						<s:select class="form-control" path="trangThaiThanhToan">
						
						</s:select>
						<br>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary" data-dismiss="modal"
							style="background: #339999">Huỷ</button>
						<button type="submit" class="btn btn-primary">Cập nhật</button>
					</div>
				</s:form>
			</div>
		</div>
	</div>
</body>
</html>