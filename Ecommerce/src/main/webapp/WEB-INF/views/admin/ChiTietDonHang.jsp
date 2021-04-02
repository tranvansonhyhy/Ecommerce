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
</head>
<body>
	<div class="content container-fluid">
		<!-- Page Header -->
		<div class="page-header d-print-none">
			<div class="row align-items-center">
				<div class="col-sm mb-2 mb-sm-0">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb breadcrumb-no-gutter">
							<li class="breadcrumb-item"><a class="breadcrumb-link"
								href="ecommerce-orders.html">Danh sách đơn hàng</a></li>
							<li class="breadcrumb-item active" aria-current="page">Chi tiết đơn hàng</li>
						</ol>
					</nav>

					<div class="d-sm-flex align-items-sm-center">
						<h1 class="page-header-title">Đơn hàng #${hoaDon.id }</h1>
						<span class="badge badge-soft-success ml-sm-3"> <span
							class="legend-indicator bg-success"></span>${hoaDon.trangThaiThanhToan2.ten }
						</span> <span class="badge badge-soft-info ml-2 ml-sm-3"> <span
							class="legend-indicator bg-info"></span>${hoaDon.tinhTrang2.tenTinhTrang }
						</span> <span class="ml-2 ml-sm-3"> <i class="tio-date-range"></i>
							<fmt:formatDate pattern="MM/dd/yyyy" value="${hoaDon.ngayTao}" />
						</span>
					</div>

					<div class="mt-2">
						<a class="text-body mr-3" href="javascript:;"
							onclick="window.print(); return false;"> <i
							class="tio-print mr-1"></i> In order
						</a>

						<!-- Unfold -->
						<div class="hs-unfold">
							<a class="js-hs-unfold-invoker text-body" href="javascript:;"
								data-hs-unfold-options='{
                       "target": "#moreOptionsDropdown",
                       "type": "css-animation"
                     }'>
								More options <i class="tio-chevron-down"></i>
							</a>

							<div id="moreOptionsDropdown"
								class="hs-unfold-content dropdown-unfold dropdown-menu mt-1">
								<a class="dropdown-item" href="#"> <i
									class="tio-copy dropdown-item-icon"></i> Duplicate
								</a> <a class="dropdown-item" href="#"> <i
									class="tio-clear dropdown-item-icon"></i> Cancel order
								</a> <a class="dropdown-item" href="#"> <i
									class="tio-archive dropdown-item-icon"></i> Archive
								</a> <a class="dropdown-item" href="#"> <i
									class="tio-visible dropdown-item-icon"></i> View order status
									page
								</a> <a class="dropdown-item" href="#"> <i
									class="tio-edit dropdown-item-icon"></i> Edit order
								</a>
							</div>
						</div>
						<!-- End Unfold -->
					</div>
				</div>

				<div class="col-sm-auto">
					<a
						class="btn btn-icon btn-sm btn-ghost-secondary rounded-circle mr-1"
						href="#" data-toggle="tooltip" data-placement="top"
						title="Previous order"> <i class="tio-arrow-backward"></i>
					</a> <a class="btn btn-icon btn-sm btn-ghost-secondary rounded-circle"
						href="#" data-toggle="tooltip" data-placement="top"
						title="Next order"> <i class="tio-arrow-forward"></i>
					</a>
				</div>
			</div>
		</div>
		<!-- End Page Header -->

		<div class="row">
			<div class="col-lg-8 mb-3 mb-lg-0">
				<!-- Card -->
				<div class="card mb-3 mb-lg-5">
					<!-- Header -->
					<div class="card-header">
						<h4 class="card-header-title">
							Chi tiết <span
								class="badge badge-soft-dark rounded-circle ml-1">${lstChiTietHD.size() }</span>
						</h4>
					</div>
					<!-- End Header -->

					<!-- Body -->
					<div class="card-body">
						<c:if test="${not empty lstChiTietHD }">
							<c:forEach var="ct" items="${lstChiTietHD }">
								<!-- Media -->
								<div class="media">
									<div class="avatar avatar-xl mr-3">
										<img class="img-fluid"
											src="<c:url value="/images/${ct.sanPham.anh }"/>"
											alt="Image Description">
									</div>

									<div class="media-body">
										<div class="row">
											<div class="col-md-6 mb-3 mb-md-0">
												<a class="h5 d-block" href="ecommerce-product-details.html">${ct.sanPham.tenSanPham }</a>

												<div class="font-size-sm text-body">
													<span>Màu sắc:</span> <span class="font-weight-bold">${ct.sanPham.mauSac }</span>
												</div>
												<div class="font-size-sm text-body">
													<span>Kích thước:</span> <span class="font-weight-bold">${ct.sanPham.kichThuoc }</span>
												</div>
											</div>

											<div class="col col-md-2 align-self-center">
												<h5><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${ct.sanPham.giaTien}"/> đ</h5>
											</div>

											<div class="col col-md-2 align-self-center">
												<h5>${ct.soLuong }</h5>
											</div>

											<div class="col col-md-2 align-self-center text-right">
												<h5><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${ct.giaTien}"/> đ</h5>
											</div>
										</div>
									</div>
								</div>
								<!-- End Media -->
								<hr>
							</c:forEach>
						</c:if>

						<div class="row justify-content-md-end mb-3">
							<div class="col-md-8 col-lg-7">
								<dl class="row text-sm-right">
									<dt class="col-sm-6">Tạm tính:</dt>
									<dd class="col-sm-6"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${hoaDon.tongTien }"/> đ</dd>
									<dt class="col-sm-6">Phí vận chuyển:</dt>
									<dd class="col-sm-6">0 đ</dd>
									<dt class="col-sm-6">Thuế:</dt>
									<dd class="col-sm-6">0 đ</dd>
									<dt class="col-sm-6">Tổng tiền:</dt>
									<dd class="col-sm-6"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${hoaDon.tongTien }"/> đ</dd>
									<dt class="col-sm-6">Đã thanh toán:</dt>
									<dd class="col-sm-6">0 đ</dd>
								</dl>
								<!-- End Row -->
							</div>
						</div>
						<!-- End Row -->
					</div>
					<!-- End Body -->
				</div>
				<!-- End Card -->

				<!-- Card -->
				<div class="card">
					<!-- Header -->
					<div class="card-header">
						<h4 class="card-header-title">
							Tình trạng đơn hàng <span class="badge badge-soft-dark ml-1">
								<span class="legend-indicator bg-dark"></span>
								${hoaDon.tinhTrang2.tenTinhTrang }
							</span>
						</h4>
					</div>
					<!-- End Header -->

					<!-- Body -->
					<div class="card-body">
						<!-- Step -->
						<ul class="step step-icon-xs">
							<!-- Step Item -->
							<li class="step-item">
								<div class="step-content-wrapper">
									<small class="step-divider">Thứ 2, 23 tháng 3</small>
								</div>
							</li>
							<!-- End Step Item -->

							<!-- Step Item -->
							<li class="step-item">
								<div class="step-content-wrapper">
									<span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>

									<div class="step-content">
										<h5 class="mb-1">
											<a class="text-dark" href="#">Delivered</a>
										</h5>

										<p class="font-size-sm mb-0">4:17 AM</p>
									</div>
								</div>
							</li>
							<!-- End Step Item -->

							<!-- Step Item -->
							<li class="step-item">
								<div class="step-content-wrapper">
									<span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>

									<div class="step-content">
										<h5 class="mb-1">
											<a class="text-dark" href="#">Out for delivery</a>
										</h5>

										<p class="font-size-sm mb-0">2:38 AM</p>
									</div>
								</div>
							</li>
							<!-- End Step Item -->

							<!-- Step Item -->
							<li class="step-item">
								<div class="step-content-wrapper">
									<span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>

									<div class="step-content">
										<h5 class="mb-1">
											<a class="text-dark" href="#">Package arrived at the
												final delivery station</a>
										</h5>

										<p class="font-size-sm mb-0">2:00 AM</p>
									</div>
								</div>
							</li>
							<!-- End Step Item -->

							<!-- Step Item -->
							<li class="step-item">
								<div class="step-content-wrapper">
									<small class="step-divider">Thứ 6, 26 tháng 3</small>
								</div>
							</li>
							<!-- End Step Item -->

							<!-- Step Item -->
							<li class="step-item">
								<div class="step-content-wrapper">
									<span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>

									<div class="step-content">
										<h5 class="mb-1">
											<a class="text-dark" href="#">Tracking number</a>
										</h5>

										<a class="link" href="#">3981241023109293</a>
										<p class="font-size-sm mb-0">6:29 AM</p>
									</div>
								</div>
							</li>
							<!-- End Step Item -->

							<!-- Step Item -->
							<li class="step-item">
								<div class="step-content-wrapper">
									<span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>

									<div class="step-content">
										<h5 class="mb-1">
											<a class="text-dark" href="#">Package has dispatched</a>
										</h5>

										<p class="font-size-sm mb-0">6:29 AM</p>
									</div>
								</div>
							</li>
							<!-- End Step Item -->

							<!-- Step Item -->
							<li class="step-item">
								<div class="step-content-wrapper">
									<span class="step-icon step-icon-soft-dark step-icon-pseudo"></span>

									<div class="step-content">
										<h5 class="mb-1">
											<a class="text-dark" href="#">Order was placed</a>
										</h5>

										<p class="font-size-sm mb-0">Order #32543</p>
									</div>
								</div>
							</li>
							<!-- End Step Item -->
						</ul>
						<!-- End Step -->

						<small>Times are shown in the local time zone.</small>
					</div>
					<!-- End Body -->
				</div>
				<!-- End Card -->
			</div>

			<div class="col-lg-4">
				<!-- Card -->
				<div class="card">
					<!-- Header -->
					<div class="card-header">
						<h4 class="card-header-title">Khách hàng</h4>
					</div>
					<!-- End Header -->

					<!-- Body -->
					<div class="card-body">
						<a class="media align-items-center"
							href="ecommerce-customer-details.html">
							<div class="avatar avatar-circle mr-3">
								<img class="avatar-img" src="<c:url value="/resources/admin/img/160x160/img1.jpg"/>"
									alt="Image Description">
							</div>
							<div class="media-body">
								${hoaDon.hoTen }
							</div>
							<div class="media-body text-right">
								<i class="tio-chevron-right text-body"></i>
							</div>
						</a>

						<hr>

						<a class="media align-items-center"
							href="ecommerce-customer-details.html">
							<div class="icon icon-soft-info icon-circle mr-3">
								<i class="tio-shopping-basket-outlined"></i>
							</div>
							<div class="media-body">
								<span class="text-body text-hover-primary">7 orders</span>
							</div>
							<div class="media-body text-right">
								<i class="tio-chevron-right text-body"></i>
							</div>
						</a>

						<hr>

						<div class="d-flex justify-content-between align-items-center">
							<h5>Chi tiết liên hệ</h5>
							
						</div>

						<ul class="list-unstyled list-unstyled-py-2">
							<li><i class="tio-online mr-2"></i> ${soDiaChi.email }</li>
							<li><i class="tio-android-phone-vs mr-2"></i> ${soDiaChi.dienThoai }</li>
						</ul>

						<hr>

						<div class="d-flex justify-content-between align-items-center">
							<h5>Địa chỉ giao hàng</h5>
							
						</div>

						<span class="d-block"> 
							${soDiaChi.diaChi }, ${soDiaChi.xa2.ten }, <br> ${soDiaChi.huyen2.ten }, ${soDiaChi.tinh2.ten }.
						</span>
					</div>
					<!-- End Body -->
				</div>
				<!-- End Card -->
			</div>
		</div>
		<!-- End Row -->
	</div>
</body>
</html>