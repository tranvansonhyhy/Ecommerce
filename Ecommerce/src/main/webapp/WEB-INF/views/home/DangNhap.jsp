<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#FormRegister').validate({
		rules : {
			tenDangNhap : {
				required : true,
			},
			matKhau : {
				required : true,
			},
		},
		messages:{
			tenDangNhap : "Vui lòng nhập email hoặc số điện thoại *",
			matKhau : "Vui lòng nhập mật khẩu *"
		}
	});
});
</script>
<style type="text/css">
	.error{
		color: red !important;
	}
</style>
</head>
<body>
	<c:url value="/thuc-hien-dang-nhap" var="urlLogin"/>
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
					<li><a href="index.html">Home</a></li>
					<li><a href="shop.html">Đăng nhập</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>

	<!-- LogIn Page Start -->
	<div class="log-in ptb-100 ptb-sm-60">
		<div class="container">
			<div class="row">
				<!-- New Customer Start -->
				<div class="col-md-6">
					<div class="well mb-sm-30">
						<div class="new-customer">
							<h3 class="custom-title">Mua hàng không đăng nhập</h3>
							<label></label>
							<p>Bạn là khách hàng mới muốn mua hàng ngay và bỏ qua bước đăng nhập</p>
							<a class="customer-btn" href="register.html">Tiếp tục</a>
						</div>
					</div>
				</div>
				<!-- New Customer End -->
				<!-- Returning Customer Start -->
				<div class="col-md-6">
					<div class="well">
						<div class="return-customer">
							<h3 class="mb-10 custom-title">Đăng nhập</h3>
							<label></label>
							<s:form action="${urlLogin }" method="post" id="FormRegister"
								modelAttribute="khachHang" enctype="multipart/form-data"
								acceptCharset="utf-8">
								<div class="form-group">
									<label>Email hoặc số điện thoại</label> <input type="text" name="tenDangNhap"
										placeholder="nhập email hoặc số điện thoại..." id="tenDangNhap"
										class="form-control" required="">
								</div>
								<div class="form-group">
									<label>Mật khẩu</label> <input type="password" name="matKhau"
										placeholder="Mật khẩu" id="matKhau"
										class="form-control" required="">
								</div>
								<p class="lost-password">
									<a href="forgot-password.html">Quên mật khẩu?</a>
								</p>
								<input type="submit" value="Đăng nhập" id="dangNhap" class="return-customer-btn">
							</s:form>
						</div>
					</div>
				</div>
				<!-- Returning Customer End -->
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
	</div>
	<!-- LogIn Page End -->
</body>
</html>