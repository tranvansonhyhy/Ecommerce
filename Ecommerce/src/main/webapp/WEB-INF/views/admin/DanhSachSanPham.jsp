<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/admin/them-san-pham" var="urlThemMoi" />
	<c:url value="/admin/sua-san-pham" var="urlSua" />
	<c:url value="/admin/tim-san-pham" var="urlTimKiem" />
	<div class="content container-fluid">
		<!-- Page Header -->
		<div class="page-header">
			<div class="row align-items-center mb-3">
				<div class="col-sm mb-2 mb-sm-0">
					<h1 class="page-header-title">
						Danh sách sản phẩm <span class="badge badge-soft-dark ml-2">${lstSanPham.size() }</span>
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

				<div class="col-sm-auto">
					<a class="btn btn-primary" href="${urlThemMoi }">Thêm mới</a>
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
					<li class="nav-item"><a class="nav-link active" href="#">Tất
							cả</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"
						tabindex="-1" aria-disabled="true">Sản phẩm còn hàng</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"
						tabindex="-1" aria-disabled="true">Sản phẩm hết hàng</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"
						tabindex="-1" aria-disabled="true">Sản phẩm ngừng kinh doanh</a></li>
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
							href="javascript:;"> <i class="tio-delete-outlined"></i> Xóa
						</a> <a class="btn btn-sm btn-white mb-2 mb-sm-0" href="javascript:;">
							<i class="tio-clear"></i> Ngừng kinh doanh
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
							<a class="js-hs-unfold-invoker btn btn-white" href="javascript:;"
								data-hs-unfold-options='{
                      "target": "#datatableFilterSidebar",
                      "type": "css-animation",
                      "animationIn": "fadeInRight",
                      "animationOut": "fadeOutRight",
                      "hasOverlay": true,
                      "smartPositionOff": true
                     }'>
								<i class="tio-filter-list mr-1"></i> Lọc
							</a>
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
												checked=""> <span class="toggle-switch-label">
													<span class="toggle-switch-indicator"></span>
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
												class="toggle-switch-input" id="toggleColumn_quantity"
												checked=""> <span class="toggle-switch-label">
													<span class="toggle-switch-indicator"></span>
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
							<th class="table-column-pl-0">Sản phẩm</th>
							<th>Mã sản phẩm</th>
							<th>Hãng SX</th>
							<th>Màu sắc</th>
							<th>Kích thước</th>
							<th>Giá tiền</th>
							<th>Xuất sứ</th>
							<th>Số lượng</th>
							<th></th>
						</tr>
					</thead>

					<tbody>
						<c:if test="${not empty lstSanPham }">
							<c:forEach var="sp" items="${lstSanPham }">
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
										href="${urlSua}/${sp.maSanPham}"> <img
											class="avatar avatar-lg mr-3"
											src="<c:url value="/images/${sp.anh }"/>"
											alt="Image Description">
											<div class="media-body">
												<h5 class="text-hover-primary mb-0">${sp.tenSanPham }</h5>
											</div>
									</a></td>
									<td>${sp.maSanPham }</td>
									<td>${sp.hangSXId }</td>
									<td>${sp.mauSac }</td>
									<td>${sp.kichThuoc }</td>
									<td>${sp.giaTien }</td>
									<td>${sp.xuatXuId }</td>
									<td>${sp.soLuong }</td>
									<td>
										<div class="btn-group" role="group">
											<a class="btn btn-sm btn-white"
												href="ecommerce-product-details.html"> <i
												class="tio-edit"></i> Edit
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
	<!-- Product Filter Modal -->
	<div id="datatableFilterSidebar"
		class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow">
		<s:form action="${urlTimKiem }" method="get" id="FormRegister"
			modelAttribute="sanPham" enctype="multipart/form-data"
			acceptCharset="utf-8">
			<div class="card card-lg sidebar-card sidebar-footer-fixed">
				<div class="card-header">
					<h4 class="card-header-title">Lọc sản phẩm</h4>

					<!-- Toggle Button -->
					<a
						class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-dark ml-2"
						href="javascript:;"
						data-hs-unfold-options='{
                "target": "#datatableFilterSidebar",
                "type": "css-animation",
                "animationIn": "fadeInRight",
                "animationOut": "fadeOutRight",
                "hasOverlay": true,
                "smartPositionOff": true
               }'>
						<i class="tio-clear tio-lg"></i>
					</a>
					<!-- End Toggle Button -->
				</div>

				<!-- Body -->
				<div class="card-body sidebar-body sidebar-scrollbar">
					<small class="text-cap mb-3">Danh mục sản phẩm</small>
					<div class="mb-2">
						<s:select class="js-select2-custom custom-select" path="danhMucId"
							size="1">
							<s:option value="0" label="Chọn danh mục" />
							<s:options items="${lstDM }" />
						</s:select>
					</div>
					<hr class="my-4">

					<small class="text-cap mb-3">Hãng sản xuất</small>
					<!-- Custom Checkbox -->
					<div class="mb-2">
						<s:select class="js-select2-custom custom-select" path="hangSXId"
							size="1">
							<s:option value="0" label="Chọn hãng" />
							<s:options items="${lstHang }" />
						</s:select>
					</div>
					<hr class="my-4">

					<small class="text-cap mb-3">Xuất xứ</small>

					<div class="mb-2">
						<s:select class="js-select2-custom custom-select" path="xuatXuId"
							size="1">
							<s:option value="0" label="Chọn xuất xứ" />
							<s:options items="${lstXX }" />
						</s:select>
					</div>


					<hr class="my-4">
				</div>
				<!-- End Body -->

				<!-- Footer -->
				<div class="card-footer sidebar-footer">
					<div class="row gx-2">
						<div class="col">
							<button type="submit" class="btn btn-block btn-primary">Lọc</button>
						</div>
					</div>
					<!-- End Row -->
				</div>
				<!-- End Footer -->
			</div>
		</s:form>
	</div>
	<!-- End Product Filter Modal -->
</body>
</html>