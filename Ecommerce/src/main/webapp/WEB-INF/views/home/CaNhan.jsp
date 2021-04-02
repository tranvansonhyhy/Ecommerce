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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style type="text/css">
	 .menu{
		color: #555555 !important;
	}
	
	li:hover{
		background: white !important;
		color: blue !important;
	}
	
	.form-control{
		width: 500px;
	}
	
	.lbl{
	position: absolute; 
	bottom: 0;
	}
	
	.well{
	background-color: rgb(239, 239, 239);
	}
	
</style>
</head>
<body>
	<c:url value="/doi-thong-tin" var="urlUpdate"/>
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
					<li class="active"><a href="register.html">Thông tin tài khoản</a></li>
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
							<h6 class="mb-10 custom-title" style="font-size: 20px; color: #555555">Thông tin tài khoản</h6>
							<label style="height: 40px"></label>
							<s:form action="${urlUpdate }" method="post" id="FormRegister"
							modelAttribute="khachHang" enctype="multipart/form-data"
							acceptCharset="utf-8">
								<div class="row">
									<div class="col-md-1"></div>
									<div class="col-md-2" style="position:relative; ">
										<label class="lbl">Họ tên:</label>
									</div>
									<div class="col-md-9">
										<s:hidden path="Id"/>
										<s:input type="text" path="hoTen"
											class="form-control"/>
									</div>
								</div>
								<label></label>
								<div class="row">
									<div class="col-md-1"></div>
									<div class="col-md-2" style="position:relative; ">
										<label class="lbl">Email:</label>
									</div>
									<div class="col-md-9">
										<s:input type="text" path="email"
											class="form-control"/>
									</div>
								</div>
								<label></label>
								<div class="row">
									<div class="col-md-1"></div>
									<div class="col-md-2" style="position:relative; ">
										<label class="lbl">Điện thoại:</label>
									</div>
									<div class="col-md-9">
										<s:input type="text" path="dienThoai"
											class="form-control"/>
										<s:hidden path="matKhau"/>
									</div>
								</div>
								<label></label>
								<div class="row">
									<div class="col-md-1"></div>
									<label class="col-md-2">Giới tính:</label>
									<div class="col-md-9 radio-button">
										<label class="radio-inline"><input type="radio"
											name="optradio"> Nam</label> <label class="radio-inline"><input
											type="radio" name="optradio"> Nữ</label>
									</div>
								</div>
								<label></label>
								<div class="row">
									<div class="col-md-1"></div>
									<div class="col-md-2" style="position:relative; ">
										<label class="lbl">Ngày sinh:</label>
									</div>
									<div class="col-md-9">
										<input type="date" name="email" id="input-email"
											class="form-control">
									</div>
								</div>
								<label></label>
								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-3">
										<input type="submit" value="Cập nhật"
										class="return-customer-btn">
									</div>
								</div>
								
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
</body>
</html>