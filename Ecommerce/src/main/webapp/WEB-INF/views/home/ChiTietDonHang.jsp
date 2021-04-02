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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style type="text/css">
.price{
	font-size: 14px;
}

.menu {
	color: #555555 !important;
}

li:hover {
	background: white !important;
	color: blue !important;
}

.form-control {
	width: 500px;
}

.lbl {
	position: absolute;
	bottom: 0;
}

h6{
	font-family: Arial, Helvetica, sans-serif;
}

.well{
	background-color: rgb(239, 239, 239);
}

td{
	border: none !important;
	padding: 0px !important;
}

.thongTin{
	height:100px;
	background-color: white;
	border-radius: 5px;
	border: none !important;
	width: 95%;
	
}

.sanPham{
	font-size: 12px;
}
</style>
</head>
<body>
	<c:url value="/chi-tiet" var="urlChiTiet"/>
	<c:url value="/doi-thong-tin" var="urlUpdate" />
	<div class="main-page-banner home-3">
		<div class="container">
			<div class="row">
				<!-- Vertical Menu Start Here -->
				<div class="col-xl-3 col-lg-4 d-none d-lg-block">
					<div class="vertical-menu mb-all-30">
						<nav>
							<ul class="vertical-menu-list" id="danhMuc">
								
							</ul>
						</nav>
					</div>
				</div>
				<!-- Vertical Menu End Here -->
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
	</div>
	<div class="breadcrumb-area mt-30">
		<div class="container">
			<div class="breadcrumb">
				<ul class="d-flex align-items-center">
					<li><a href="index.html">Trang chủ</a></li>
					<li class="active"><a href="register.html">Thông tin tài
							khoản</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<div class="log-in ptb-100 ptb-sm-60">
		<div class="container">
			<div class="row">
				<!-- New Customer Start -->
				<div class="col-md-3">
					<div class="well mb-sm-30">
						<div class="new-customer">
							<p>Tài khoản của</p>
							<label></label>
							<ul>
								<li style="height: 36px;"><i class="fa fa-user"
									style="font-size: 24px; color: silver; width: 30px"></i> &nbsp;
									<a class="menu" href="<c:url value ="/thong-tin"/>">Thông tin tài khoản</a></li>
								<li style="height: 37.5px;"><i class="fa fa-unlock-alt"
									style="font-size: 24px; color: silver; width: 30px"></i> &nbsp;
									<a class="menu" href="<c:url value ="/mat-khau-tai-khoan"/>">Thay đổi mật khẩu</a></li>
								<li style="height: 33px;"><i class="fa fa-bell"
									style="font-size: 20px; color: silver; width: 30px"></i> &nbsp;
									<a class="menu" href="#">Thông báo</a></li>
								<li style="height: 31.5px;"><i
									class='fa fa-shopping-basket'
									style='font-size: 18px; color: silver; width: 36px'></i>&nbsp;
									<a class="menu" href="<c:url value ="/lich-su-mua-hang"/>">Lịch sử mua hàng</a></li>
								<li style="height: 37px;"><i class="fa fa-home"
									style='font-size: 23px; color: silver; width: 32px'></i> &nbsp;
									<a class="menu" href="#">Sổ địa chỉ</a></li>
								<li style="height: 38px;"><i class="fa fa-credit-card"
									style='font-size: 18px; color: silver; width: 34px'></i>&nbsp;
									<a class="menu" href="#">Thông tin thanh toán</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- New Customer End -->
				<!-- Returning Customer Start -->
				<div class="col-md-9">
					<div class="well">
						<div class="return-customer">
							<h6 class="mb-10 custom-title"
								style="font-size: 17px; color: #555555">Chi tiết đơn hàng #${hoaDon.id } - <span style="color:#333366">
													${hoaDon.tinhTrang2.tenTinhTrang }
												</span></h6>
							<label style="height: 20px"></label>
							<table class="table" style="border: 0px solid black !important">
								<thead style="font-size: 14px">
									<tr style="height: 30px">
										<td style="border: none;width: 33%">ĐỊA CHỈ NGƯỜI NHẬN</td>
										<td style="border: none;">HÌNH THỨC THANH TOÁN</td>
										<td style="border: none;">HÌNH THỨC GIAO HÀNG</td>
									</tr>
									<tr>
										<td>
											<div class="thongTin" style="padding: 10px">
												<h6 style="height: 30px">${soDiaChi.hoTen }</h6>
												<p style="font-size: 13px">${soDiaChi.diaChi }, ${soDiaChi.xa2.ten }, ${soDiaChi.huyen2.ten }, ${soDiaChi.tinh2.ten }</p>
											</div>
										</td>
										<td>
											<div class="thongTin" style="padding: 10px">
												<span style="color:#FFCC00">
													${hoaDon.phuongThucThanhToan2.ten }
												</span>
											</div>
										</td>
										<td>
											<div class="thongTin" style="width: 100%">
											
											</div>
										</td>
									</tr>
								</thead>
								<tbody style="font-size: 13px;">
									
								</tbody>
							</table>
							<label></label>
							<table style="background-color: white; width: 100%; border-radius: 5px;">
								<thead style="width: 100%">
									<tr style="height: 50px;">
										<th style="width: 2%;"></th>
										<th style="width: 43%;">Sản phẩm</th>
										<th style="width: 20%">Giá</th>
										<th style="width: 15%">Số lượng</th>
										<th style="width: 20%">Tạm tính</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${not empty lstChiTietHD }">
										<c:forEach var="ct" items="${lstChiTietHD }">
											<tr style="height: 80px">
												<td></td>
												<td>
													<div class="row">
														<div class="col-md-2">
															<img alt="" src="<c:url value="/images/${ct.sanPham.anh }"/>" width="50" height="50">
														</div>
														
														<div class="col-md-8 sanPham">
															<a href="${urlChiTiet }/${ct.sanPham.maSanPham }">${ct.sanPham.tenSanPham }</a>
														</div>
													</div>
												</td>
												<td><span class="price"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${ct.sanPham.giaTien }"/> đ</span> </td>
												<td>${ct.soLuong }</td>
												<td><span class="price"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${ct.giaTien }"/> đ</span></td>
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- Returning Customer End -->
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
	</div>
</body>
</html>