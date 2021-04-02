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
		$('#themThuocTinh')
	    .click(
	        function () {
	            $('#addVariantsContainer')
	                .append("<tr>"
	                +"<th><img class='avatar' src='<c:url value='/images/400x400/img2.jpg'/>'"
	                    +"alt='Image Description'></th>"
	                +"<th class='table-column-pl-0'><input type='text'"
	                    +"class='form-control'></th>"
	                +"<th class='table-column-pl-0'><input type='text'"
	                    +"class='form-control'></th>"
	                +"<th class='table-column-pl-0'>"
	                    +"<div class='input-group input-group-merge'>"
	                        +"<input type='text' class='form-control'>"
	                    +"</div>"
	                +"</th>"
	                +"<th class='table-column-pl-0'>"
	                	+"<input type='text' class='form-control'>"
	                +"</th>"
	                +"<th class='table-column-pl-0'>"
	                    +"<div class='btn-group' role='group' aria-label='Edit group'>"
	                        +"<a class='btn btn-white' href='#'>"
	                            +"<i class='tio-delete-outlined'></i>"
	                        +"</a>"
	                    +"</div>"
	                +"</th>"
	            +"</tr>");
			});
		
		$('#FormRegister').validate({
			rules : {
				tenSanPham : {
					required : true,
					minlength : 5,
				},
				maSanPham : {
					required : true,
					minlength : 5,
				}
			},
			messages:{
				tenSanPham : "Vui lòng nhập tên sản phẩm",
				maSanPham : "Vui lòng nhập mã sản phẩm"
			}
		});
	});
	
	function showPreview(event) {
        if (event.target.files.length > 0) {
            var src = URL.createObjectURL(event.target.files[0]);
            var preview = document.getElementById("file-ip-1-preview");
            preview.src = src;
            preview.style.display = "block";
        }
    }
	
	function showPreview1(event) {
        if (event.target.files.length > 0) {
            var src = URL.createObjectURL(event.target.files[0]);
            var preview = document.getElementById("file-ip-2-preview");
            preview.src = src;
            preview.style.display = "block";
        }
    }
	function showPreview2(event) {
        if (event.target.files.length > 0) {
            var src = URL.createObjectURL(event.target.files[0]);
            var preview = document.getElementById("file-ip-3-preview");
            preview.src = src;
            preview.style.display = "block";
        }
    }
	
	function showPreview3(event) {
        if (event.target.files.length > 0) {
            var src = URL.createObjectURL(event.target.files[0]);
            var preview = document.getElementById("file-ip-4-preview");
            preview.src = src;
            preview.style.display = "block";
        }
    }
</script>

</head>
<body>
	<c:url value="/admin/them-san-pham" var="urlThemMoi" />
	<c:url value="/admin/them-san-pham-moi" var="urlAdd" />
	<div class="content container-fluid">
		<!-- Page Header -->
		<s:form action="${urlAdd }" method="post" id="FormRegister"
			modelAttribute="sanPham" enctype="multipart/form-data"
			acceptCharset="utf-8">
			<div class="page-header">
				<div class="row align-items-center">
					<div class="col-sm mb-2 mb-sm-0">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb breadcrumb-no-gutter">
								<li class="breadcrumb-item"><a class="breadcrumb-link"
									href="ecommerce-products.html">Sản phẩm</a></li>
								<li class="breadcrumb-item active" aria-current="page">Thêm
									mới</li>
							</ol>
						</nav>

						<h1 class="page-header-title">Thêm sản phẩm mới</h1>
					</div>
				</div>
				<!-- End Row -->
			</div>
			<!-- End Page Header -->

			<div class="row">
				<div class="col-lg-8">
					<!-- Card -->
					<div class="card mb-3 mb-lg-5">
						<!-- Header -->
						<div class="card-header">
							<h4 class="card-header-title">Thông tin sản phầm</h4>
						</div>
						<!-- End Header -->

						<!-- Body -->
						<div class="card-body">
							<!-- Form Group -->
							<div class="form-group">
								<label for="productNameLabel" class="input-label">Tên
									sản phẩm <i class="tio-help-outlined text-body ml-1"
									data-toggle="tooltip" data-placement="top"
									title="Products are the goods or services you sell."></i>
								</label>

								<s:input type="text" class="form-control" path="tenSanPham"
									required="" />
							</div>
							<!-- End Form Group -->

							<div class="row">
								<div class="col-sm-6">
									<!-- Form Group -->
									<div class="form-group">
										<label for="SKULabel" class="input-label">Mã sản phẩm
											<i class="tio-help-outlined text-body ml-1"
											data-toggle="tooltip" data-placement="top"
											title="Products are the goods or services you sell."></i>
										</label>
										<s:hidden path="Id"/>
										<s:input type="text" class="form-control" path="maSanPham"
											required="" />
									</div>
									<!-- End Form Group -->
								</div>
							</div>
							<!-- End Row -->

							<label class="input-label">Mô tả <span
								class="input-label-secondary">(Không bắt buộc)</span></label>

							<!-- Quill -->
							<div class="quill-custom">
								<s:textarea class="form-control" rows="30" path="moTa"/>
							</div>
							<!-- End Quill -->
						</div>
						<!-- Body -->
					</div>
					<!-- End Card -->

					<!-- Card -->
					<div class="card mb-3 mb-lg-5">
						<!-- Header -->
						<div class="card-header">
							<h4 class="card-header-title">Media</h4>

							<!-- Unfold -->
							<div class="hs-unfold">
								<a class="js-hs-unfold-invoker btn btn-sm btn-ghost-secondary"
									href="javascript:;"
									data-hs-unfold-options='{
                       "target": "#mediaDropdown",
                       "type": "css-animation"
                     }'>
									Add media from URL <i class="tio-chevron-down"></i>
								</a>

								<div id="mediaDropdown"
									class="hs-unfold-content dropdown-unfold dropdown-menu dropdown-menu-right mt-1">
									<a class="dropdown-item" href="javascript:;"
										data-toggle="modal" data-target="#addImageFromURLModal"> <i
										class="tio-link dropdown-item-icon"></i> Add image from URL
									</a> <a class="dropdown-item" href="javascript:;"
										data-toggle="modal" data-target="#embedVideoModal"> <i
										class="tio-youtube-outlined dropdown-item-icon"></i> Embed
										video
									</a>
								</div>
							</div>
							<!-- End Unfold -->
						</div>
						<!-- End Header -->

						<!-- Body -->
						<div class="card-body">
							<!-- Gallery -->
							<div id="fancyboxGallery"
								class="js-fancybox row justify-content-sm-center gx-2"
								data-hs-fancybox-options='{
                       "selector": "#fancyboxGallery .js-fancybox-item"
                     }'>
								<div class="col-6 col-sm-4 col-md-3 mb-3 mb-lg-5">
									<!-- Card -->
									<div class="card card-sm">
										<img class="card-img-top" id="file-ip-1-preview"
											src="<c:url value="/images/${lstAnhSanPham.get(0).anh }"/>" 
											onerror="this.src='<c:url value="/images/400x400/img2.jpg"/>'"
											alt="Image Description">
										<div class="card-body">
											<div class="row text-center">
												<div class="col">
													<label  class="js-fancybox-item text-body" for="file-ip-1"> <i
														class="tio-add-circle-outlined"></i>
													</label>
													<input type="file" name="fUpload" id="file-ip-1" accept="image/*" onchange="showPreview(event);" style="display: none;">
												</div>

												<div class="col column-divider">
													<a class="text-danger" href="javascript:;"
														data-toggle="tooltip" data-placement="top" title="Delete">
														<i class="tio-delete-outlined"></i>
													</a>
												</div>
											</div>
											<!-- End Row -->
										</div>
									</div>
									<!-- End Card -->
								</div>

								<div class="col-6 col-sm-4 col-md-3 mb-3 mb-lg-5">
									<!-- Card -->
									<div class="card card-sm">
										<img class="card-img-top" id="file-ip-2-preview"
											src="<c:url value="/images/${lstAnhSanPham.get(1).anh }"/>"
											onerror="this.src='<c:url value="/images/400x400/img2.jpg"/>'"
											alt="Image Description">
										<div class="card-body">
											<div class="row text-center">
												<div class="col">
													<label class="js-fancybox-item text-body" for="file-ip-2"> <i
														class="tio-add-circle-outlined"></i>
													</label>
													<input type="file" name="fUpload" id="file-ip-2" accept="image/*" onchange="showPreview1(event);" style="display: none;">
												</div>

												<div class="col column-divider">
													<a class="text-danger" href="javascript:;"
														data-toggle="tooltip" data-placement="top" title="Delete">
														<i class="tio-delete-outlined"></i>
													</a>
												</div>
											</div>
											<!-- End Row -->
										</div>
									</div>
									<!-- End Card -->
								</div>

								<div class="col-6 col-sm-4 col-md-3 mb-3 mb-lg-5">
									<!-- Card -->
									<div class="card card-sm">
										<img class="card-img-top" id="file-ip-3-preview"
											src="<c:url value="/images/${lstAnhSanPham.get(2).anh }"/>"
											onerror="this.src='<c:url value="/images/400x400/img2.jpg"/>'"
											alt="Image Description">
										<div class="card-body">
											<div class="row text-center">
												<div class="col">
													<label class="js-fancybox-item text-body" for="file-ip-3"> <i
														class="tio-add-circle-outlined"></i>
													</label>
													<input type="file" name="fUpload" id="file-ip-3" accept="image/*" onchange="showPreview2(event);" style="display: none;">
												</div>

												<div class="col column-divider">
													<a class="text-danger" href="javascript:;"
														data-toggle="tooltip" data-placement="top" title="Delete">
														<i class="tio-delete-outlined"></i>
													</a>
												</div>
											</div>
											<!-- End Row -->
										</div>
									</div>
									<!-- End Card -->
								</div>

								<div class="col-6 col-sm-4 col-md-3 mb-3 mb-lg-5">
									<!-- Card -->
									<div class="card card-sm">
										<img class="card-img-top" id="file-ip-4-preview"
											src="<c:url value="/images/${lstAnhSanPham.get(3).anh }"/>"
											onerror="this.src='<c:url value="/images/400x400/img2.jpg"/>'"
											alt="Image Description">
										<div class="card-body">
											<div class="row text-center">
												<div class="col">
													<label class="js-fancybox-item text-body" for="file-ip-4"> <i
														class="tio-add-circle-outlined"></i>
													</label>
													<input type="file" name="fUpload" id="file-ip-4" accept="image/*" onchange="showPreview3(event);" style="display: none;">
												</div>

												<div class="col column-divider">
													<a class="text-danger" href="javascript:;"
														data-toggle="tooltip" data-placement="top" title="Delete">
														<i class="tio-delete-outlined"></i>
													</a>
												</div>
											</div>
											<!-- End Row -->
										</div>
									</div>
									<!-- End Card -->
								</div>
							</div>
							<!-- End Gallery -->

							<!-- Dropzone -->
							<div id="" class="js-dropzone" style="height: 2px"></div>
							<!-- End Dropzone -->
						</div>
						<!-- Body -->
					</div>
					<!-- End Card -->

					<!-- Card -->
					<div class="js-add-field card mb-3 mb-lg-5"
						data-hs-add-field-options='{
                  "template": "#addVariantsTemplate",
                  "container": "#addVariantsContainer",
                  "defaultCreated": 0,
                  "limit": 100
                }'>
						<!-- Header -->
						<div class="card-header">
							<div
								class="row justify-content-between align-items-center flex-grow-1">
								<div class="col-12 col-sm mb-3 mb-sm-0">
									<h4 class="card-header-title">Chi tiết</h4>
								</div>

								<div class="col-auto">
									<div class="d-flex align-items-center">
										<!-- Datatable Info -->
										<div id="datatableCounterInfo" style="display: none;">
											<div class="d-flex align-items-center">
												<span class="font-size-sm mr-3"> <span
													id="datatableCounter">0</span> Selected
												</span> <a class="btn btn-sm btn-outline-danger"
													href="javascript:;"> <i class="tio-delete-outlined"></i>
													Delete
												</a>
											</div>
										</div>
										<!-- End Datatable Info -->

									</div>
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
                            "targets": [0, 1, 6],
                            "orderable": false
                          }],
                         "order": [],
                         "pageLength": 15,
                         "isResponsive": false,
                         "isShowPaging": false
                       }'>
								<thead class="thead-light">
									<tr>
										<th scope="col" class="table-column-pr-0">
											<div class="custom-control custom-checkbox"></div>
										</th>
										<th class="table-column-pl-0">Kích thước</th>
										<th class="table-column-pl-0">Màu sắc</th>
										<th class="table-column-pl-0">Giá tiền</th>
										<th class="table-column-pl-0">Số lượng</th>
										<th class="table-column-pl-0"></th>
									</tr>
								</thead>

								<tbody id="addVariantsContainer">
									<tr>
										<th><img class="avatar"
											src="<c:url value ="/images/400x400/img2.jpg"/>"
											alt="Image Description"></th>
										<th class="table-column-pl-0"><s:input type="text"
												path="kichThuoc" class="form-control" /></th>
										<th class="table-column-pl-0"><s:input type="text"
												path="mauSac" class="form-control" /></th>
										<th class="table-column-pl-0"><s:input type="text"
												path="giaTien" class="form-control" /></th>
										<th class="table-column-pl-0"><s:input type="text"
												path="soLuong" class="form-control" /></th>
										<th class="table-column-pl-0">
											<div class="btn-group" role="group" aria-label="Edit group">
												<a class="btn btn-white" href="#"> <i
													class="tio-delete-outlined"></i>
												</a>
											</div>
										</th>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- End Table -->

						<!-- Footer -->

						<!-- End Footer -->
					</div>
					<!-- End Card -->
				</div>

				<div class="col-lg-4">
					<!-- Card -->
					<!-- End Card -->

					<!-- Card -->
					<div class="card">
						<!-- Header -->
						<div class="card-header">
							<h4 class="card-header-title">Xuất sứ</h4>
						</div>
						<!-- End Header -->

						<!-- Body -->
						<div class="card-body">
							<!-- Form Group -->
							<div class="form-group">
								<label for="categoryLabel" class="input-label">Hãng sản
									xuất</label>

								<!-- Select -->

								<s:select class="js-select2-custom custom-select"
									path="hangSXId" size="1">
									<s:option value="0" label="Chọn hãng" />
									<s:options items="${lstHang }" />
								</s:select>
								<!-- End Select -->
							</div>

							<div class="form-group">
								<label for="categoryLabel" class="input-label">Xuất xứ</label>

								<!-- Select -->
								<s:select class="js-select2-custom custom-select"
									path="xuatXuId" size="1">
									<s:option value="0" label="Chọn xuất xứ" />
									<s:options items="${lstXX }" />
								</s:select>
								<!-- End Select -->
							</div>


							<!-- End Form Group -->

							<!-- Form Group -->
							<div class="form-group">
								<label for="categoryLabel" class="input-label">Danh mục</label>

								<!-- Select -->
								<s:select class="js-select2-custom custom-select"
									path="danhMucId" size="1">
									<s:option value="0" label="Chọn danh mục" />
									<s:options items="${lstDM }" />
								</s:select>
								<!-- End Select -->
							</div>
							<!-- Form Group -->

							<!-- Form Group -->
							<div class="form-group">
								<label for="collectionsLabel" class="input-label">Loại
									sản phẩm</label>

								<!-- Select -->
								<s:select class="js-select2-custom custom-select"
									path="loaiSPId" size="1">
									<s:option value="0" label="Chọn loại" />
									<s:options items="${lstLoaiSP }" />
								</s:select>
								<!-- End Select -->


							</div>
							<!-- Form Group -->

							<label for="tagsLabel" class="input-label">Tags</label> <input
								type="text" class="js-tagify tagify-form-control form-control"
								 placeholder="Enter tags here"
								aria-label="Enter tags here">
						</div>
						<!-- End Body -->
					</div>
					<!-- End Card -->
				</div>
			</div>
			<!-- End Row -->

			<div
				class="position-fixed bottom-0 content-centered-x w-100 z-index-99 mb-3"
				style="max-width: 40rem;">
				<!-- Card -->
				<div class="card card-sm bg-dark border-dark mx-2">
					<div class="card-body">
						<div class="row justify-content-center justify-content-sm-between">
							<div class="col">
								<button type="button" class="btn btn-ghost-danger"></button>
							</div>
							<div class="col-auto">
								<a href="${urlThemMoi }" class="btn btn-ghost-light mr-2">Nhập lại</a>
								<button type="submit" class="btn btn-primary">Cập nhật</button>
							</div>
						</div>
						<!-- End Row -->
					</div>
				</div>
				<!-- End Card -->
			</div>
		</s:form>
	</div>
	<script
		src="https://cdn.ckeditor.com/ckeditor5/24.0.0/classic/ckeditor.js">
	</script>
	<script>
		ClassicEditor.create(document.querySelector('#moTa'));
	</script>
</body>
</html>