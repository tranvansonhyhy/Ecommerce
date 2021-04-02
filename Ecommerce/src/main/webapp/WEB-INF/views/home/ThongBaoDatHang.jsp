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
<style type="text/css">
	#thongBao {
     text-align: center !important;
	}
</style>
</head>
<body>
	<c:url value="/mua-hang" var="urlMuaHang"/>
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

	<!-- Breadcrumb Start -->
	<div class="breadcrumb-area mt-30">
		<div class="container">
			<div class="breadcrumb">
				<ul class="d-flex align-items-center">
					<li><a href="index.html">Trang chủ</a></li>
					<li class="active"><a href="cart.html">Giỏ hàng</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Breadcrumb End -->
	<!-- Cart Main Area Start -->
	<div class="cart-main-area ptb-100 ptb-sm-60">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12" id="thongBao">
					<!-- Form Start -->
					<img alt="" src="images/${img }" width="150" height="150">
					<h1>${thanhCong } !</h1>
					<p>${moTa }</p>
					<!-- Form End -->
				</div>
			</div>
			<!-- Row End -->
		</div>
	</div>
	<!-- Cart Main Area End -->
</body>
</html>