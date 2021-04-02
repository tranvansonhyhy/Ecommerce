<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="content container-fluid">
		<!-- Page Header -->
		<div class="page-header">
			<div class="row align-items-center mb-3">
				<div class="col-sm mb-2 mb-sm-0">
					<h1 class="page-header-title">
						Danh sách sản phẩm <span class="badge badge-soft-dark ml-2">72,031</span>
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
					<a class="btn btn-primary" href="ecommerce-add-product.html">Thêm mới</a>
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
							href="javascript:;"> <i class="tio-delete-outlined"></i>
							Xóa
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
												class="toggle-switch-input" id="toggleColumn_vendor">
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
												class="toggle-switch-input" id="toggleColumn_quantity">
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
							<th class="table-column-pl-0">Sản phẩm</th>
							<th>Hãng SX</th>
							<th>Mã sản phẩm</th>
							<th>Danh mục</th>
							<th>Xuất sứ</th>
							<th>Giá tiền</th>
							<th>Số lượng</th>
							<th>Variants</th>
							<th>Actions</th>
						</tr>
					</thead>

					<tbody>
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
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3" src="<c:url value="/images/400x400/img4.jpg"/>"
									alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Photive wireless
											speakers</h5>
									</div>
							</a></td>
							<td>Electronics</td>
							<td>Google</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox1"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox1" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>2384741241</td>
							<td>$65</td>
							<td>60</td>
							<td>2</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck2"> <label
										class="custom-control-label" for="productsCheck2"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img26.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Topman shoe</h5>
									</div>
							</a></td>
							<td>Shoes</td>
							<td>Topman</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox2"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox2" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>4124123847</td>
							<td>$21</td>
							<td>125</td>
							<td>4</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown2",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown2"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck3"> <label
										class="custom-control-label" for="productsCheck3"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img25.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">RayBan black
											sunglasses</h5>
									</div>
							</a></td>
							<td>Accessories</td>
							<td>RayBan</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox3"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox3" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>8472341241</td>
							<td>$37</td>
							<td>42</td>
							<td>1</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown3",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown3"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck4"> <label
										class="custom-control-label" for="productsCheck4"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3" src="<c:url value="/images/400x400/img6.jpg"/>"
									alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Mango Women's shoe</h5>
									</div>
							</a></td>
							<td>Shoes</td>
							<td>Mango</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox4"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox4"> <span
									class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>2412384741</td>
							<td>$65</td>
							<td>76</td>
							<td>3</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown4",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown4"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck5"> <label
										class="custom-control-label" for="productsCheck5"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3" src="<c:url value="/images/400x400/img3.jpg"/>"
									alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Calvin Klein t-shirts</h5>
									</div>
							</a></td>
							<td>Clothing</td>
							<td>Calvin Klein</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox5"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox5"> <span
									class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>8234741241</td>
							<td>$89</td>
							<td>99</td>
							<td>7</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown5",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown5"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck6"> <label
										class="custom-control-label" for="productsCheck6"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3" src="<c:url value="/images/400x400/img5.jpg"/>"
									alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Givenchy perfume</h5>
									</div>
							</a></td>
							<td>Clothing</td>
							<td>Givenchy</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox6"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox6" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>9984741241</td>
							<td>$99</td>
							<td>50</td>
							<td>1</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown6",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown6"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck7"> <label
										class="custom-control-label" for="productsCheck7"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img11.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Asos t-shirts</h5>
									</div>
							</a></td>
							<td>Clothing</td>
							<td>Asos</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox7"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox7"> <span
									class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>7184741241</td>
							<td>$17</td>
							<td>422</td>
							<td>4</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown7",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown7"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck8"> <label
										class="custom-control-label" for="productsCheck8"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img12.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Apple AirPods 2</h5>
									</div>
							</a></td>
							<td>Electronics</td>
							<td>Apple</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox8"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox8" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>1084741241</td>
							<td>$249</td>
							<td>1000</td>
							<td>1</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown8",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown8"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck9"> <label
										class="custom-control-label" for="productsCheck9"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img13.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Timex Watch</h5>
									</div>
							</a></td>
							<td>Accessories</td>
							<td>Timex</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox9"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox9" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>4831441241</td>
							<td>$68</td>
							<td>15</td>
							<td>2</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown9",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown9"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck10"> <label
										class="custom-control-label" for="productsCheck10"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img14.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Air Jordan 1</h5>
									</div>
							</a></td>
							<td>Shoes</td>
							<td>Nike Jordan</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox10"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox10" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>1223847441</td>
							<td>$139</td>
							<td>456</td>
							<td>9</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown10",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown10"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck11"> <label
										class="custom-control-label" for="productsCheck11"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img15.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">RayBan sunglasses</h5>
									</div>
							</a></td>
							<td>Accessories</td>
							<td>RayBan</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox11"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox11"> <span
									class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>1242384741</td>
							<td>$14</td>
							<td>83</td>
							<td>1</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown11",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown11"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck12"> <label
										class="custom-control-label" for="productsCheck12"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img17.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Gray and yellow cap</h5>
									</div>
							</a></td>
							<td>Accessories</td>
							<td>VA RVCA</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox12"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox12"> <span
									class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>8311741241</td>
							<td>$9</td>
							<td>522</td>
							<td>1</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown12",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown12"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck13"> <label
										class="custom-control-label" for="productsCheck13"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img16.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Apple iPad Pro 2020</h5>
									</div>
							</a></td>
							<td>Electronics</td>
							<td>Apple</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox13"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox13"> <span
									class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>2459741241</td>
							<td>$799</td>
							<td>450</td>
							<td>8</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown13",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown13"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck14"> <label
										class="custom-control-label" for="productsCheck14"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img18.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Brown Hat</h5>
									</div>
							</a></td>
							<td>Accessories</td>
							<td>Mango</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox14"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox14" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>2384994241</td>
							<td>$67</td>
							<td>32</td>
							<td>7</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown14",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown14"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck15"> <label
										class="custom-control-label" for="productsCheck15"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img19.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Levis women's jeans</h5>
									</div>
							</a></td>
							<td>Clothing</td>
							<td>Levis</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox15"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox15"> <span
									class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>1344761241</td>
							<td>$74</td>
							<td>121</td>
							<td>3</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown15",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown15"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck16"> <label
										class="custom-control-label" for="productsCheck16"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img20.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Levis men's jeans
											jacket</h5>
									</div>
							</a></td>
							<td>Clothing</td>
							<td>Levis</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox16"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox16" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>9904741241</td>
							<td>$61</td>
							<td>357</td>
							<td>1</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown16",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown16"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck17"> <label
										class="custom-control-label" for="productsCheck17"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img21.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Beats Headphones</h5>
									</div>
							</a></td>
							<td>Electronics</td>
							<td>Beats</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox17"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox17" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>8812384741</td>
							<td>$499</td>
							<td>50</td>
							<td>4</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown17",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown17"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck18"> <label
										class="custom-control-label" for="productsCheck18"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img22.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Office Notebook</h5>
									</div>
							</a></td>
							<td>Accessories</td>
							<td>-</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox18"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox18" checked="">
									<span class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>7134741241</td>
							<td>$9</td>
							<td>750</td>
							<td>1</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown18",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown18"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck19"> <label
										class="custom-control-label" for="productsCheck19"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img23.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Colorful pens</h5>
									</div>
							</a></td>
							<td>Accessories</td>
							<td>-</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox19"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox19"> <span
									class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>2224741241</td>
							<td>$6</td>
							<td>750</td>
							<td>3</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown19",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown19"
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

						<tr>
							<td class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="productsCheck20"> <label
										class="custom-control-label" for="productsCheck20"></label>
								</div>
							</td>
							<td class="table-column-pl-0"><a
								class="media align-items-center"
								href="ecommerce-product-details.html"> <img
									class="avatar avatar-lg mr-3"
									src="<c:url value="/images/400x400/img24.jpg"/>" alt="Image Description">
									<div class="media-body">
										<h5 class="text-hover-primary mb-0">Clarks shoes</h5>
									</div>
							</a></td>
							<td>Shoes</td>
							<td>Clarks</td>
							<td><label class="toggle-switch toggle-switch-sm"
								for="stocksCheckbox20"> <input type="checkbox"
									class="toggle-switch-input" id="stocksCheckbox20"> <span
									class="toggle-switch-label"> <span
										class="toggle-switch-indicator"></span>
								</span>
							</label></td>
							<td>2614741241</td>
							<td>$66</td>
							<td>982</td>
							<td>10</td>
							<td>
								<div class="btn-group" role="group">
									<a class="btn btn-sm btn-white"
										href="ecommerce-product-details.html"> <i class="tio-edit"></i>
										Edit
									</a>

									<!-- Unfold -->
									<div class="hs-unfold btn-group">
										<a
											class="js-hs-unfold-invoker btn btn-icon btn-sm btn-white dropdown-toggle dropdown-toggle-empty"
											href="javascript:;"
											data-hs-unfold-options='{
                             "target": "#productsEditDropdown20",
                             "type": "css-animation",
                             "smartPositionOffEl": "#datatable"
                           }'></a>

										<div id="productsEditDropdown20"
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
</body>
</html>