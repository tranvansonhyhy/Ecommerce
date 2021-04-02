<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- Khai báo thư viện sử dụng tiles để thiết kế giao diện-->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function () {
		var formatTien = new Intl.NumberFormat('de-DE', {
			  style: 'currency',
			  currency: 'VND',
			});
		 $("#slider-range").slider({
		        range: true,
		        min: 0,
		        max: 100000000,
		        values: [0, 20000000],
		    slide: function( event, ui ) {
		        $( "#amount" ).val(formatTien.format(ui.values[ 0 ]) + " - " + formatTien.format(ui.values[ 1 ]) );
		        $("#giaMin").val(ui.values[ 0 ]);
		        $("#giaMax").val(ui.values[ 1 ]);
		      }
		    });
		 var giaTruoc = formatTien.format($( "#slider-range" ).slider( "values", 0 ));
		 var giaSau = formatTien.format($( "#slider-range" ).slider( "values", 1 ))
		    $( "#amount" ).val(giaTruoc +
		      " - " + giaSau );
	})
</script>
<style type="text/css">
	.combobox{
	display: block;
    width: 100%;
    height:34px;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
	}
	
	.price{
		color: red !important;
		font-size: 19px !important;
	}
</style>
</head>
<body>
	<c:url value="/chi-tiet" var="urlChiTiet"/>
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
                        <li class="active"><a href="product.html">Danh sách sản phẩm</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
	<!-- Shop Page Start -->
	
	<div class="main-shop-page pt-100 pb-100 ptb-sm-60">
		<div class="container">
			<!-- Row End -->
			<div class="row">
				<!-- Sidebar Shopping Option Start -->
				<div class="col-lg-3 order-2 order-lg-1">
					<form action="">
						<div class="sidebar">
							<!-- Sidebar Electronics Categorie Start -->
							<div class="electronics mb-40">
								<h3 class="sidebar-title">Hãng sản xuất</h3>
								<div id="shop-cate-toggle"
									class="category-menu sidebar-menu sidbar-style">
									<c:if test="${not empty lstHSX }">
										<c:forEach var="h" items="${lstHSX }">
											<input type="checkbox" style="margin-right: 7px">
											<span>${h.tenHangSX }</span>
											<br>
										</c:forEach>
									</c:if>
								</div>
								<!-- category-menu-end -->
							</div>
							<!-- Sidebar Electronics Categorie End -->
							<!-- Price Filter Options Start -->
							<div class="search-filter mb-40" style="width: 270px">
								<h3 class="sidebar-title">Giá tiền</h3>
									<div id="slider-range"></div>
									<input type="text" id="amount" class="amount-range" readonly="">
							</div>
							<input type="hidden" id="giaMin"> <input type="hidden"
								id="giaMax">
							<!-- Price Filter Options End -->
							<!-- Sidebar Categorie Start -->
							<div class="sidebar-categorie mb-40">
								<h3 class="sidebar-title">Xuất xứ</h3>
								<c:if test="${not empty lstXX }">
									<c:forEach var="x" items="${lstXX }">
										<input type="checkbox" style="margin-right: 7px">
										<span>${x.xuatXu }</span>
										<br>
									</c:forEach>
								</c:if>
							</div>
							<!-- Sidebar Categorie Start -->
							<!-- Product Size Start -->
							<div class="size mb-40">
								<h3 class="sidebar-title">Kích thước</h3>
								<c:if test="${not empty kichThuoc }">
									<c:forEach var="kt" items="${kichThuoc }">
										<input type="checkbox" style="margin-right: 7px">
										<span>${kt }</span>
										<br>
									</c:forEach>
								</c:if>
							</div>
							<!-- Product Size End -->
							<!-- Product Color Start -->
							<div class="color mb-40">
								<h3 class="sidebar-title">Màu sắc</h3>
								<c:if test="${not empty mauSac }">
									<c:forEach var="ms" items="${mauSac }">
										<input type="checkbox" style="margin-right: 7px">
										<span>${ms }</span>
										<br>
									</c:forEach>
								</c:if>
							</div>
							<!-- Product Color End -->
							<!-- Product Top Start -->

							<!-- Product Top End -->
							<!-- Single Banner Start -->
							<div class="col-img">
								<a href="shop.html"><img
									src="<c:url value="/images/banner/banner-sidebar.jpg"/>" alt="slider-banner"></a>
							</div>
							<!-- Single Banner End -->
						</div>
					</form>
				</div>
				<!-- Sidebar Shopping Option End -->
				<!-- Product Categorie List Start -->
				<div class="col-lg-9 order-1 order-lg-2">
					<!-- Grid & List View Start -->
					<div
						class="grid-list-top border-default universal-padding d-md-flex justify-content-md-between align-items-center mb-30">
						<div class="grid-list-view  mb-sm-15">
							<ul class="nav tabs-area d-flex align-items-center">
								<li><a class="active" data-toggle="tab" href="#grid-view"><i
										class="fa fa-th"></i></a></li>
								<li><a data-toggle="tab" href="#list-view"><i
										class="fa fa-list-ul"></i></a></li>
							</ul>
						</div>
						
					</div>
					<!-- Grid & List View End -->
					<div class="main-categorie mb-all-40">
						<!-- Grid & List Main Area End -->
						<div class="tab-content fix">
							<div id="grid-view" class="tab-pane fade show active">
								<div class="row">
									<c:if test="${not empty lstSanPham }">
										<c:forEach var="sp" items="${lstSanPham }">
											<!-- Single Product Start -->
											<div class="col-lg-4 col-md-4 col-sm-6 col-6">
												<div class="single-product">
													<!-- Product Image Start -->
													<div class="pro-img">
														<a href="${urlChiTiet }/${sp.maSanPham}"> <img class="primary-img"
															src="<c:url value="/images/${sp.anh }"/>" alt="single-product"> <img
															class="secondary-img" src="<c:url value="/images/${sp.anh }"/>"
															alt="single-product">
														</a> <a href="#" class="quick_view" data-toggle="modal"
															data-target="#myModal" title="Quick View"><i
															class="lnr lnr-magnifier"></i></a>
													</div>
													<!-- Product Image End -->
													<!-- Product Content Start -->
													<div class="pro-content">
														<div class="pro-info">
															<h4>
																<a href="${urlChiTiet }/${sp.maSanPham}">${sp.tenSanPham }</a>
															</h4>
															<p>
																<span class="price">
																<fmt:formatNumber maxFractionDigits = "3" type="number"
																	value="${sp.giaTien }"/> đ</span>
															</p>
														</div>
														<div class="pro-actions">
															<div class="actions-primary">
																<a class="addGioHang" data-sp="${sp.maSanPham }" href="javascript:void(0)" title="Thêm vào giỏ"> + Thêm vào
																	giỏ</a>
															</div>
														</div>
													</div>
													<!-- Product Content End -->
												</div>
											</div>
											<!-- Single Product End -->
										</c:forEach>
									</c:if>
								</div>
								<!-- Row End -->
							</div>
							<!-- #grid view End -->
							<div id="list-view" class="tab-pane fade">
								<c:if test="${not empty lstSanPham }">
									<c:forEach var="sp" items="${lstSanPham }">
										<!-- Single Product Start -->
										<div class="single-product">
											<div class="row">
												<!-- Product Image Start -->
												<div class="col-lg-4 col-md-5 col-sm-12">
													<div class="pro-img">
														<a href="${urlChiTiet }/${sp.maSanPham}"> <img class="primary-img"
															src="<c:url value="/images/${sp.anh }"/>" alt="single-product">
															<img class="secondary-img" src="<c:url value="/images/${sp.anh }"/>"
															alt="single-product">
														</a> <a href="${urlChiTiet }/${sp.maSanPham}" class="quick_view" data-toggle="modal"
															data-target="#myModal" title="Quick View"><i
															class="lnr lnr-magnifier"></i></a> <span class="sticker-new">new</span>
													</div>
												</div>
												<!-- Product Image End -->
												<!-- Product Content Start -->
												<div class="col-lg-8 col-md-7 col-sm-12">
													<div class="pro-content hot-product2">
														<h4>
															<a href="${urlChiTiet }/${sp.maSanPham}">${sp.tenSanPham }</a>
														</h4>
														<p>
															<span class="price">
																<fmt:formatNumber maxFractionDigits = "3" type="number"
																	value="${sp.giaTien }"/> đ</span>
														</p>
														<div class="pro-actions">
															<div class="actions-primary">
																<a class="addGioHang" data-sp="${sp.maSanPham }" href="javascript:void(0)"
																	data-original-title="Thêm vào giỏ"> + Thêm vào giỏ</a>
															</div>
														</div>
													</div>
												</div>
												<!-- Product Content End -->
											</div>
										</div>
										<!-- Single Product End -->
									</c:forEach>
								</c:if>
							</div>
							<!-- #list view End -->
							<div class="pro-pagination">
								<ul class="blog-pagination">
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
								</ul>
								<div class="product-pagination">
									<span class="grid-item-list">Showing 1 to 12 of 51 (5
										Pages)</span>
								</div>
							</div>
							<!-- Product Pagination Info -->
						</div>
						<!-- Grid & List Main Area End -->
					</div>
				</div>
				<!-- product Categorie List End -->
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
	</div>
	<!-- Shop Page End -->
</body>
</html>