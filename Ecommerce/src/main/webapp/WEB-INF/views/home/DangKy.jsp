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
	$("#themMoi").click(function(e){
		e.preventDefault();
		if($('#FormRegister').valid()){
			$("#FormRegister").submit();
		};
	})
	$('#FormRegister').validate({
		rules : {
			hoTen : {
				required : true,
			},
			email : {
				required : true,
			},
			dienThoai : {
				required : true,
			},
			diaChi : {
				required : true,
			},
			matKhau : {
				required : true,
				minlength : 6,
			},
			matKhau2 : {
				required : true,
				minlength : 6,
				equalTo : "#matKhau"
			},
		},
		messages:{
			hoTen : "Vui lòng nhập họ tên *",
			email : "Vui lòng nhập email *",
			dienThoai : "Vui lòng nhập số điện thoại *",
			diaChi : "Vui lòng nhập địa chỉ *",
			matKhau : {
				required : "Vui lòng nhập mật khẩu *",
				minlength : "Mật khẩu phải có độ dài tối thiếu 6 kí tự *"
			},
			matKhau2 : {
				required : "Vui lòng nhập mật khẩu *",
				minlength : "Mật khẩu phải có độ dài tối thiểu 6 kí tự *",
				equalTo : "Mật khẩu không khớp *"
			}
		}
	});
});
</script>
</head>
<body>
	<c:url value="/dang-ky-moi" var="urlAdd"/>
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
					<li class="active"><a href="register.html">Đăng ký</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Breadcrumb End -->
	<!-- Register Account Start -->
	<div class="register-account ptb-100 ptb-sm-60">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="register-title">
						<h3 class="mb-10">Đăng ký tài khoản</h3>
						<p class="mb-10">Nếu bạn đã có tài khoản, vui lòng quay lại trang đăng nhập.</p>
					</div>
				</div>
			</div>
			<!-- Row End -->
			<div class="row">
				<div class="col-sm-12">
					<s:form action="${urlAdd }" method="post" id="FormRegister"
						modelAttribute="khachHang" enctype="multipart/form-data"
						acceptCharset="utf-8">
						<fieldset>
							<legend>Thông tin cá nhân</legend>
							<label></label>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="f-name"><span
									class="require">*</span>Họ và tên</label>
								<div class="col-md-10">
									<s:input type="text" class="form-control" path="hoTen"
										placeholder="Họ và tên" required=""/>
								</div>
							</div>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="email"><span
									class="require">*</span>Địa chỉ email</label>
								<div class="col-md-10">
									<s:input type="text" class="form-control" path="email"
										placeholder="Địa chỉ email..." required=""/>
								</div>
							</div>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="number"><span
									class="require">*</span>Điện thoại</label>
								<div class="col-md-10">
									<s:input type="text" class="form-control" path="dienThoai"
										placeholder="Số điện thoại" required=""/>
								</div>
							</div>
						</fieldset>
						<label></label>
						<fieldset>
							<legend>Thông tin mật khẩu</legend>
							<label></label>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="pwd"><span
									class="require">*</span>Mật khẩu:</label>
								<div class="col-md-10">
									<s:input type="password" class="form-control" path="matKhau"
										placeholder="Mật khẩu" required=""/>
								</div>
							</div>
							<div class="form-group d-md-flex align-items-md-center">
								<label class="control-label col-md-2" for="pwd-confirm"><span
									class="require">*</span>Nhập lại mật khẩu</label>
								<div class="col-md-10">
									<input type="password" class="form-control" name="matKhau2" id="matKhau2"
										placeholder="Nhập lại mật khẩu" required="">
								</div>
							</div>
						</fieldset>
						<fieldset class="newsletter-input">
							<legend></legend>
							<div class="form-group d-md-flex align-items-md-center">
								<div class="col-md-10 radio-button">
								</div>
							</div>
						</fieldset>
						<div class="terms">
							<div class="float-md-right">
								<input type="submit" id="themMoi"
									value="Đăng ký" class="return-customer-btn">
							</div>
						</div>
					</s:form>
				</div>
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
	</div>
	<!-- Register Account End -->
</body>
</html>