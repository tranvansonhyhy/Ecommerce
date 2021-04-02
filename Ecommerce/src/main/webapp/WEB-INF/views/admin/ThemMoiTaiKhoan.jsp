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
<script type="text/javascript">
$(document).ready(function(){
	
	
	$('#FormRegister').validate({
		rules : {
			hoTen : {
				required : true,
				minlength : 5,
			},
			taiKhoan : {
				required : true,
				minlength : 5,
			},
			matKhau : {
				required : true,
				minlength : 5,
			},
			matKhau2 : {
				required : true,
				minlength : 5,
				equalTo : "#matKhau"
			},
			dienThoai : {
				required : true,
				minlength : 5,
			}
		},
		messages:{
			hoTen : "Vui lòng nhập họ tên",
			email : "Vui lòng nhập email",
			dienThoai:"Vui lòng nhập số điện thoại",
			taiKhoan : {
				required : "Vui lòng nhập tên đăng nhập",
				minlength : "Tên đăng nhập phải có độ dài tối thiếu 5 kí tự"
			},
			matKhau : {
				required : "Vui lòng nhập mật khẩu",
				minlength : "Mật khẩu phải có độ dài tối thiếu 5 kí tự"
			},
			matKhau2 : {
				required : "Vui lòng nhập mật khẩu",
				minlength : "Mật khẩu phải có độ dài tối thiểu 5 kí tự",
				equalTo : "Mật khẩu không đúng"
			}
		}
	});
});
</script>
</head>
<body>
	<c:url value="/admin/tai-khoan-add-new" var="urlThemMoi" />
	<c:url value="/admin/them-moi-tai-khoan" var="urlAdd" />
	<div class="content container-fluid">
		<!-- Step Form -->
		<s:form class="js-step-form py-md-5" action="${urlThemMoi}" method="post" id="FormRegister"
					modelAttribute="nguoiDung" enctype="multipart/form-data" acceptCharset="utf-8"
			data-hs-step-form-options='{
                "progressSelector": "#addUserStepFormProgress",
                "stepsSelector": "#addUserStepFormContent",
                "endSelector": "#addUserFinishBtn",
                "isValidate": false
              }'>
			<div class="row justify-content-lg-center">
				<div class="col-lg-8">
					<!-- Step -->

					<!-- End Step -->

					<!-- Content Step Form -->
					<div id="addUserStepFormContent">
						<!-- Card -->
						<div id="addUserStepProfile" class="card card-lg active">
							<!-- Body -->
							<div class="card-body">
								<!-- Form Group -->
								<div class="row form-group">
									<label class="col-sm-3 col-form-label input-label">Ảnh
										đại diện</label>

									<div class="col-sm-9">
										<div class="d-flex align-items-center">
											<!-- Avatar -->
											<label
												class="avatar avatar-xl avatar-circle avatar-uploader mr-5"
												for="avatarUploader"> <img id="avatarImg"
												class="avatar-img"
												src="<c:url value="/images/160x160/img1.jpg"/>"
												alt="Image Description"> <input type="file"
												class="js-file-attach avatar-uploader-input"
												id="avatarUploader"
												name="fUpload"
												data-hs-file-attach-options='{
                                      "textTarget": "#avatarImg",
                                      "mode": "image",
                                      "targetAttr": "src",
                                      "resetTarget": ".js-file-attach-reset-img",
                                      "resetImg": "<c:url value="/images/160x160/img1.jpg"/>",
                                      "allowTypes": [".png", ".jpeg", ".jpg"]
                                   }'>

												<span class="avatar-uploader-trigger"> <i
													class="tio-edit avatar-uploader-icon shadow-soft"></i>
											</span>
											</label>
											<!-- End Avatar -->

											<button type="button"
												class="js-file-attach-reset-img btn btn-white">Xóa
												ảnh</button>
										</div>
									</div>
								</div>
								<!-- End Form Group -->

								<!-- Form Group -->
								<div class="row form-group">
									<label for="firstNameLabel"
										class="col-sm-3 col-form-label input-label">Họ và tên
										<i class="tio-help-outlined text-body ml-1"
										data-toggle="tooltip" data-placement="top"
										title="Displayed on public forums, such as Front."></i>
									</label>

									<div class="col-sm-9">
										<div class="input-group input-group-sm-down-break">
											<div class="js-form-message" style="width: 100%">
												<s:input type="text" class="form-control" path="hoTen"
													placeholder="Họ và tên đầy đủ" required=""
													data-msg="Vui lòng nhập tài khoản." aria-label="Htmlstream" />
											</div>
										</div>
									</div>
								</div>
								<!-- End Form Group -->
								<!-- Form Group -->
								<div class="row form-group">
									<label for="firstNameLabel"
										class="col-sm-3 col-form-label input-label">Tên đăng nhập 
										<i class="tio-help-outlined text-body ml-1"
										data-toggle="tooltip" data-placement="top"
										title="Displayed on public forums, such as Front."></i>
									</label>

									<div class="col-sm-9">
										<div class="input-group input-group-sm-down-break">
											<div class="js-form-message" style="width: 100%">
												<s:input type="text" class="form-control" path="taiKhoan"
													aria-label="Htmlstream"/>
											</div>
										</div>
									</div>
								</div>
								<!-- End Form Group -->
								<!-- Form Group -->
								<div class="row form-group">
									<label for="firstNameLabel"
										class="col-sm-3 col-form-label input-label">Mật khẩu <i class="tio-help-outlined text-body ml-1"
										data-toggle="tooltip" data-placement="top"
										title="Displayed on public forums, such as Front."></i>
									</label>

									<div class="col-sm-9">
										<div class="input-group input-group-sm-down-break">
											<div class="js-form-message" style="width: 100%">
												<s:input type="password" class="form-control" path="matKhau"
													 placeholder="**********"
													aria-label="Htmlstream" />
											</div>
										</div>
									</div>
								</div>
								<!-- End Form Group -->
								<!-- Form Group -->
									<div class="row form-group">
									<label for="firstNameLabel"
										class="col-sm-3 col-form-label input-label">Kiểm tra mật khẩu <i class="tio-help-outlined text-body ml-1"
										data-toggle="tooltip" data-placement="top"
										title="Displayed on public forums, such as Front."></i>
									</label>

									<div class="col-sm-9">
										<div class="input-group input-group-sm-down-break">
											<div class="js-form-message" style="width: 100%">
												<input type="password" class="form-control" id="matKhau2" name="matKhau2"
													 placeholder="**********" required="required"
													aria-label="Htmlstream">
											</div>
										</div>
									</div>
								</div>
								<!-- End Form Group -->
								<!-- Form Group -->
								<div class="row form-group">
									<label for="emailLabel"
										class="col-sm-3 col-form-label input-label">Email</label>

									<div class="col-sm-9">
										<s:input type="email" class="form-control" path="email"
											id="emailLabel" placeholder="clarice@example.com"
											aria-label="clarice@example.com"/>
									</div>
								</div>
								<!-- End Form Group -->

								<!-- Form Group -->
								<div class="row form-group">
									<label for="organizationLabel"
										class="col-sm-3 col-form-label input-label">Điện thoại</label>

									<div class="col-sm-9">
										<s:input type="text" class="form-control" path="dienThoai"
											id="organizationLabel" placeholder="" aria-label="Htmlstream"/>
									</div>
								</div>
								<!-- End Form Group -->

							</div>
							<!-- End Body -->

							<!-- Footer -->
							<div
								class="card-footer d-flex justify-content-end align-items-center">
								<button type="submit" id ="dangKy" class="btn btn-primary">Thêm mới</button>
								<div
									class="card-footer d-flex justify-content-end align-items-center">
									<a href='<c:url value ="/admin/them-moi-tai-khoan"/>'
										class="btn btn-warning">Nhập lại</a>
								</div>
								<!-- End Footer -->
							</div>
							<!-- End Card -->




						</div>
						<!-- End Content Step Form -->

						<!-- Message Body -->
						<div id="successMessageContent" style="display: none;">
							<div class="text-center">
								<img class="img-fluid mb-3"
									src="<c:url value="/resources/admin/svg/illustrations/hi-five.svg"/>"
									alt="Image Description" style="max-width: 15rem;">

								<div class="mb-4">
									<h2>Successful!</h2>
									<p>
										New <span class="font-weight-bold text-dark">Ella Lauda</span>
										user has been successfully created.
									</p>
								</div>

								<div class="d-flex justify-content-center">
									<a class="btn btn-white mr-3" href="users.html"> <i
										class="tio-chevron-left ml-1"></i> Back to users
									</a> <a class="btn btn-primary" href="users-add-user.html"> <i
										class="tio-user-add mr-1"></i> Add new user
									</a>
								</div>
							</div>
						</div>
						<!-- End Message Body -->
					</div>
				</div>
				<!-- End Row -->
			</div>
		</s:form>
		<!-- End Step Form -->
	</div>
</body>
</html>