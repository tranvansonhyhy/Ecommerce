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
	<div class="content container-fluid">
		<!-- Page Header -->
		<div class="page-header">
			<div class="row align-items-end">
				<div class="col-sm mb-2 mb-sm-0">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb breadcrumb-no-gutter">
							<li class="breadcrumb-item"><a class="breadcrumb-link"
								href="javascript:;">Quản lý</a></li>
							<li class="breadcrumb-item"><a class="breadcrumb-link"
								href="javascript:;">Người dùng</a></li>
							<li class="breadcrumb-item active" aria-current="page">Danh sách</li>
						</ol>
					</nav>

					<h1 class="page-header-title">Danh sách</h1>
				</div>

				<div class="col-sm-auto">
					<a class="btn btn-primary" href="users-add-user.html"> <i
						class="tio-user-add mr-1"></i> Thêm mới
					</a>
				</div>
			</div>
			<!-- End Row -->
		</div>
		<!-- End Page Header -->

		<!-- Stats -->
		<div class="row gx-2 gx-lg-3">
			<div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
				<!-- Card -->
				<div class="card h-100">
					<div class="card-body">
						<h6 class="card-subtitle mb-2">Total users</h6>

						<div class="row align-items-center gx-2">
							<div class="col">
								<span class="js-counter display-4 text-dark">24</span> <span
									class="text-body font-size-sm ml-1">from 22</span>
							</div>

							<div class="col-auto">
								<span class="badge badge-soft-success p-1"> <i
									class="tio-trending-up"></i> 5.0%
								</span>
							</div>
						</div>
						<!-- End Row -->
					</div>
				</div>
				<!-- End Card -->
			</div>

			<div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
				<!-- Card -->
				<div class="card h-100">
					<div class="card-body">
						<h6 class="card-subtitle mb-2">Active members</h6>

						<div class="row align-items-center gx-2">
							<div class="col">
								<span class="js-counter display-4 text-dark">12</span> <span
									class="text-body font-size-sm ml-1">from 11</span>
							</div>

							<div class="col-auto">
								<span class="badge badge-soft-success p-1"> <i
									class="tio-trending-up"></i> 1.2%
								</span>
							</div>
						</div>
						<!-- End Row -->
					</div>
				</div>
				<!-- End Card -->
			</div>

			<div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
				<!-- Card -->
				<div class="card h-100">
					<div class="card-body">
						<h6 class="card-subtitle mb-2">New/returning</h6>

						<div class="row align-items-center gx-2">
							<div class="col">
								<span class="js-counter display-4 text-dark">56</span> <span
									class="display-4 text-dark">%</span> <span
									class="text-body font-size-sm ml-1">from 48.7</span>
							</div>

							<div class="col-auto">
								<span class="badge badge-soft-danger p-1"> <i
									class="tio-trending-down"></i> 2.8%
								</span>
							</div>
						</div>
						<!-- End Row -->
					</div>
				</div>
				<!-- End Card -->
			</div>

			<div class="col-sm-6 col-lg-3 mb-3 mb-lg-5">
				<!-- Card -->
				<div class="card h-100">
					<div class="card-body">
						<h6 class="card-subtitle mb-2">Active members</h6>

						<div class="row align-items-center gx-2">
							<div class="col">
								<span class="js-counter display-4 text-dark">28.6</span> <span
									class="display-4 text-dark">%</span> <span
									class="text-body font-size-sm ml-1">from 28.6%</span>
							</div>

							<div class="col-auto">
								<span class="badge badge-soft-secondary p-1">0.0%</span>
							</div>
						</div>
						<!-- End Row -->
					</div>
				</div>
				<!-- End Card -->
			</div>
		</div>
		<!-- End Stats -->

		<!-- Card -->
		<div class="card">
			<!-- Header -->
			<div class="card-header">
				<div
					class="row justify-content-between align-items-center flex-grow-1">
					<div class="col-sm-6 col-md-4 mb-3 mb-sm-0">
						<form>
							<!-- Search -->
							<div class="input-group input-group-merge input-group-flush">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="tio-search"></i>
									</div>
								</div>
								<input id="datatableSearch" type="search" class="form-control"
									placeholder="Search users" aria-label="Search users">
							</div>
							<!-- End Search -->
						</form>
					</div>

					<div class="col-sm-6">
						<div
							class="d-sm-flex justify-content-sm-end align-items-sm-center">
							<!-- Datatable Info -->
							<div id="datatableCounterInfo" class="mr-2 mb-2 mb-sm-0"
								style="display: none;">
								<div class="d-flex align-items-center">
									<span class="font-size-sm mr-3"> <span
										id="datatableCounter">0</span> Selected
									</span> <a class="btn btn-sm btn-outline-danger" href="javascript:;">
										<i class="tio-delete-outlined"></i> Delete
									</a>
								</div>
							</div>
							<!-- End Datatable Info -->

							<!-- Unfold -->
							<div class="hs-unfold mr-2">
								<a
									class="js-hs-unfold-invoker btn btn-sm btn-white dropdown-toggle"
									href="javascript:;"
									data-hs-unfold-options='{
                         "target": "#usersExportDropdown",
                         "type": "css-animation"
                       }'>
									<i class="tio-download-to mr-1"></i> Export
								</a>

								<div id="usersExportDropdown"
									class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-sm-right">
									<span class="dropdown-header">Options</span> <a
										id="export-copy" class="dropdown-item" href="javascript:;">
										<img class="avatar avatar-xss avatar-4by3 mr-2"
										src="<c:url value="/resources/admin/svg/illustrations/copy.svg"/>"
										alt="Image Description"> Copy
									</a> <a id="export-print" class="dropdown-item" href="javascript:;">
										<img class="avatar avatar-xss avatar-4by3 mr-2"
										src="<c:url value="/resources/admin/svg/illustrations/print.svg"/>"
										alt="Image Description"> Print
									</a>
									<div class="dropdown-divider"></div>
									<span class="dropdown-header">Download options</span> <a
										id="export-excel" class="dropdown-item" href="javascript:;">
										<img class="avatar avatar-xss avatar-4by3 mr-2"
										src="<c:url value="/resources/admin/svg/brands/excel.svg"/>" alt="Image Description">
										Excel
									</a> <a id="export-csv" class="dropdown-item" href="javascript:;">
										<img class="avatar avatar-xss avatar-4by3 mr-2"
										src="<c:url value="/resources/admin/svg/components/placeholder-csv-format.svg"/>"
										alt="Image Description"> .CSV
									</a> <a id="export-pdf" class="dropdown-item" href="javascript:;">
										<img class="avatar avatar-xss avatar-4by3 mr-2"
										src="<c:url value="/resources/admin/svg/brands/pdf.svg"/>" alt="Image Description">
										PDF
									</a>
								</div>
							</div>
							<!-- End Unfold -->

							<!-- Unfold -->
							<div class="hs-unfold">
								<a class="js-hs-unfold-invoker btn btn-sm btn-white"
									href="javascript:;"
									data-hs-unfold-options='{
                         "target": "#usersFilterDropdown",
                         "type": "css-animation",
                         "smartPositionOff": true
                       }'>
									<i class="tio-filter-list mr-1"></i> Lọc <span
									class="badge badge-soft-dark rounded-circle ml-1">2</span>
								</a>

								<div id="usersFilterDropdown"
									class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-sm-right dropdown-card card-dropdown-filter-centered"
									style="min-width: 22rem;">
									<!-- Card -->
									<div class="card">
										<div class="card-header">
											<h5 class="card-header-title">Lọc người dùng</h5>

											<!-- Toggle Button -->
											<a
												class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-secondary ml-2"
												href="javascript:;"
												data-hs-unfold-options='{
                              "target": "#usersFilterDropdown",
                              "type": "css-animation",
                              "smartPositionOff": true
                             }'>
												<i class="tio-clear tio-lg"></i>
											</a>
											<!-- End Toggle Button -->
										</div>

										<div class="card-body">
											<form>
												<div class="form-group">
													<small class="text-cap mb-2">Vai trò</small>

													<div class="form-row">
														<div class="col">
															<!-- Checkbox -->
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input"
																	id="usersFilerCheck1" checked=""> <label
																	class="custom-control-label" for="usersFilerCheck1">Tất cả</label>
															</div>
															<!-- End Checkbox -->
														</div>
														
														<div class="col">
															<!-- Checkbox -->
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input"
																	id="usersFilerCheck2"> <label
																	class="custom-control-label" for="usersFilerCheck1">Admin</label>
															</div>
															<!-- End Checkbox -->
														</div>
														
														<div class="col">
															<!-- Checkbox -->
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input"
																	id="usersFilerCheck2"> <label
																	class="custom-control-label" for="usersFilerCheck2">Nhân viên</label>
															</div>
															<!-- End Checkbox -->
														</div>
													</div>
													<!-- End Row -->
												</div>

												<div class="form-row">
													<div class="col-sm form-group">
														<small class="text-cap mb-2">Chức vụ</small>

														<!-- Select -->
														<select
															class="js-select2-custom js-datatable-filter custom-select"
															size="1" style="opacity: 0;" data-target-column-index="2"
															data-hs-select2-options='{
                                          "minimumResultsForSearch": "Infinity"
                                        }'>
															<option value="">Any</option>
															<option value="Accountant">Accountant</option>
															<option value="Co-founder">Co-founder</option>
															<option value="Designer">Designer</option>
															<option value="Developer">Developer</option>
															<option value="Director">Director</option>
														</select>
														<!-- End Select -->
													</div>

													<div class="col-sm form-group">
														<small class="text-cap mb-2">Status</small>

														<!-- Select -->
														<select
															class="js-select2-custom js-datatable-filter custom-select"
															size="1" style="opacity: 0;" data-target-column-index="4"
															data-hs-select2-options='{
                                          "minimumResultsForSearch": "Infinity"
                                        }'>
															<option value="">Any status</option>
															<option value="Active"
																data-option-template='<span class="legend-indicator bg-success"></span>Active'>Active</option>
															<option value="Pending"
																data-option-template='<span class="legend-indicator bg-warning"></span>Pending'>Pending</option>
															<option value="Suspended"
																data-option-template='<span class="legend-indicator bg-danger"></span>Suspended'>Suspended</option>
														</select>
														<!-- End Select -->
													</div>

													
												</div>
												<!-- End Row -->

												<a class="js-hs-unfold-invoker btn btn-block btn-primary"
													href="javascript:;"
													data-hs-unfold-options='{
                                "target": "#usersFilterDropdown",
                                "type": "css-animation",
                                "smartPositionOff": true
                               }'>Áp dụng</a>
											</form>
										</div>
									</div>
									<!-- End Card -->
								</div>
							</div>
							<!-- End Unfold -->
						</div>
					</div>
				</div>
				<!-- End Row -->
			</div>
			<!-- End Header -->

			<!-- Table -->
			<div class="table-responsive datatable-custom">
				<table id="datatable"
					class="table table-lg table-borderless table-thead-bordered table-nowrap table-align-middle card-table"
					data-hs-datatables-options='{
                     "columnDefs": [{
                        "targets": [0, 7],
                        "orderable": false
                      }],
                     "order": [],
                     "info": {
                       "totalQty": "#datatableWithPaginationInfoTotalQty"
                     },
                     "search": "#datatableSearch",
                     "entries": "#datatableEntries",
                     "pageLength": 15,
                     "isResponsive": false,
                     "isShowPaging": false,
                     "pagination": "datatablePagination"
                   }'>
					<thead class="thead-light">
						<tr>
							<th class="table-column-pr-0">
								<div class="custom-control custom-checkbox">
									<input id="datatableCheckAll" type="checkbox"
										class="custom-control-input"> <label
										class="custom-control-label" for="datatableCheckAll"></label>
								</div>
							</th>
							<th class="table-column-pl-0">Họ và tên</th>
							<th>Tên đăng nhập</th>
							<th>Mật khẩu</th>
							<th>Email</th>
							<th>Điện thoại</th>
							<th>Vai trò</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty lstNguoiDung }">
							<c:forEach var="nd" items="${lstNguoiDung }">
								<tr>
									<td class="table-column-pr-0">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="usersDataCheck1"> <label
												class="custom-control-label" for="usersDataCheck1"></label>
										</div>
									</td>
									<td class="table-column-pl-0"><a
										class="d-flex align-items-center" href="user-profile.html">
											<div class="avatar avatar-circle">
												<img class="avatar-img"
													src="<c:url value="/images/160x160/${nd.avatar }"/>"
													alt="Image Description">
											</div>
											<div class="ml-3">
												<span class="d-block h5 text-hover-primary mb-0">${nd.hoTen} <i class="tio-verified text-primary"
													data-toggle="tooltip" data-placement="top"
													title="Top endorsed"></i>
												</span>
											</div>
									</a></td>
									<td>${nd.taiKhoan }</td>
									<td>${nd.matKhau }</td>
									<td>${nd.email }</td>
									<td>${nd.dienThoai }</td>
									<td>${nd.vaiTroId }</td>
									<td>
										<div id="editUserPopover" data-toggle="popover-dark"
											data-placement="left"
											title="<div class='d-flex align-items-center'>Edit user <a href='#!' class='close close-light ml-auto'><i id='closeEditUserPopover' class='tio-clear'></i></a></div>"
											data-content="Check out this Edit user modal example."
											data-html="true">
											<a class="btn btn-sm btn-white" href="javascript:;"
												data-toggle="modal" data-target="#editUserModal"> <i
												class="tio-edit"></i> Edit
											</a>
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
								<option value="10">10</option>
								<option value="15" selected="">15</option>
								<option value="20">20</option>
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