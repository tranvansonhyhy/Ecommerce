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
.menu {
	color: #555555 !important;
}

li:hover {
	background: white !important;
	color: blue !important;
}

.well{
	background-color: rgb(239, 239, 239);
}

.form-control {
	width: 500px;
}

.lbl {
	position: absolute;
	bottom: 0;
}
</style>
</head>
<body>
	<c:url value="/chi-tiet-don-hang" var="urlChiTiet" />
	
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
								style="font-size: 20px; color: #555555">Đơn hàng của tôi</h6>
							<label style="height: 20px"></label>
							<table class="table" style="border: 0px solid black !important">
								<thead>
									<tr>
										<th style="border: none;">Mã đơn hàng</th>
										<th style="border: none;">Ngày mua</th>
										<th style="border: none;">Tổng tiền</th>
										<th style="border: none;">Trạng thái</th>
									</tr>
								</thead>
								<tbody style="font-size: 13px;">
									<c:if test="${not empty lstHoaDon }">
										<c:forEach var="hd" items="${lstHoaDon }">
											<tr>
												<td style="border: none;"><a href="${urlChiTiet }/${hd.id}" style="color: #6633FF">#${hd.id}</a></td>
												<td style="border: none;"><fmt:formatDate pattern="MM/dd/yyyy" value="${hd.ngayTao}" /></td>
												<td style="border: none;"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${hd.tongTien }"/> đ</td>
												<td style="border: none;"><span style="color:#FFCC00">
													${hd.tinhTrang2.tenTinhTrang }
												</span></td>
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