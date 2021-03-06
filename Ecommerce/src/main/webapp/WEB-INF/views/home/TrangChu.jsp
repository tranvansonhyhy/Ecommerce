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
	.price{
		color: red;
		font-weight: normal;
		font-size: 19px;
	}
</style>
</head>
<body>
	<c:url var="gio" value="/" scope="request" />
	<c:url value="/chi-tiet" var="urlChiTiet"/>
	<div class="main-page-banner pb-50 off-white-bg">
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
				<!-- Slider Area Start Here -->
				<div class="col-xl-9 col-lg-8 slider_box">
					<div class="slider-wrapper theme-default">
						<!-- Slider Background  images Start-->
						<div id="slider" class="nivoSlider">
							<a href="shop.html"><img src="images/slider/1.png"
								data-thumb="img/slider/1.png" alt="" title="#htmlcaption"></a>
							<a href="shop.html"><img src="images/slider/2.jpg"
								data-thumb="img/slider/2.jpg" alt="" title="#htmlcaption2"></a>
						</div>
						<!-- Slider Background  images Start-->
					</div>
				</div>
				<!-- Slider Area End Here -->
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
	</div>
	<!-- Brand Banner Area Start Here -->
	<div class="images-banner pb-50 off-white-bg">
		<div class="container">
			<div class="col-img">
				<a href="#"><img src="images/banner/h1-banner.jpg"
					alt="images banner"></a>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Brand Banner Area End Here -->
	<!-- Hot Deal Products Start Here -->
	<div class="hot-deal-products off-white-bg pb-90 pb-sm-50">
		<div class="container">
			<!-- Product Title Start -->
			<div class="post-title pb-30">
				<h2>hot</h2>
			</div>
			<!-- Product Title End -->
			<!-- Hot Deal Product Activation Start -->
			<div class="hot-deal-active owl-carousel">
				<!-- Single Product Start -->
				<div class="single-product">
					<!-- Product images Start -->
					<div class="pro-img">
						<a href="product.html"> <img class="primary-img"
							src="images/products/1.jpg" alt="single-product"> <img
							class="secondary-img" src="images/products/7.jpg"
							alt="single-product">
						</a>
						<div class="countdown" data-countdown="2020/03/01"></div>
						<a href="#" class="quick_view" data-toggle="modal"
							data-target="#myModal" title="Quick View"><i
							class="lnr lnr-magnifier"></i></a>
					</div>
					<!-- Product images End -->
					<!-- Product Content Start -->
					<div class="pro-content">
						<div class="pro-info">
							<h4>
								<a href="product.html">Poly and Bark Vortex Side</a>
							</h4>
							<p>
								<span class="price">$84.45</span>
								<del class="prev-price">$105.50</del>
							</p>
							<div class="label-product l_sale">
								20<span class="symbol-percent">%</span>
							</div>
						</div>
						<div class="pro-actions">
							<div class="actions-primary">
								<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
							</div>
							<div class="actions-secondary">
								<a href="compare.html" title="Compare"><i
									class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
									href="wishlist.html" title="WishList"><i
									class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
							</div>
						</div>
					</div>
					<!-- Product Content End -->
				</div>
				<!-- Single Product End -->
				<!-- Single Product Start -->
				<div class="single-product">
					<!-- Product images Start -->
					<div class="pro-img">
						<a href="product.html"> <img class="primary-img"
							src="images/products/24.jpg" alt="single-product"> <img
							class="secondary-img" src="images/products/25.jpg"
							alt="single-product">
						</a>
						<div class="countdown" data-countdown="2020/03/01"></div>
						<a href="#" class="quick_view" data-toggle="modal"
							data-target="#myModal" title="Quick View"><i
							class="lnr lnr-magnifier"></i></a>
					</div>
					<!-- Product images End -->
					<!-- Product Content Start -->
					<div class="pro-content">
						<div class="pro-info">
							<h4>
								<a href="product.html">Light Inverted Pendant Quick</a>
							</h4>
							<p>
								<span class="price">$84.45</span>
								<del class="prev-price">$105.50</del>
							</p>
							<div class="label-product l_sale">
								20<span class="symbol-percent">%</span>
							</div>
						</div>
						<div class="pro-actions">
							<div class="actions-primary">
								<a href="cart.html" title="Th??m v??o gi??? h??ng">+ Th??m v??o gi??? h??ng</a>
							</div>
							<div class="actions-secondary">
								<a href="compare.html" title="Compare"><i
									class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
									href="wishlist.html" title="WishList"><i
									class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
							</div>
						</div>
					</div>
					<!-- Product Content End -->
				</div>
				<!-- Single Product End -->
				<!-- Single Product Start -->
				<div class="single-product">
					<!-- Product images Start -->
					<div class="pro-img">
						<a href="product.html"> <img class="primary-img"
							src="images/products/42.jpg" alt="single-product"> <img
							class="secondary-img" src="images/products/43.jpg"
							alt="single-product">
						</a>
						<div class="countdown" data-countdown="2020/03/01"></div>
						<a href="#" class="quick_view" data-toggle="modal"
							data-target="#myModal" title="Quick View"><i
							class="lnr lnr-magnifier"></i></a>
					</div>
					<!-- Product images End -->
					<!-- Product Content Start -->
					<div class="pro-content">
						<div class="pro-info">
							<h4>
								<a href="product.html">Terra Xpress HE Cooking </a>
							</h4>
							<p>
								<span class="price">$84.45</span>
								<del class="prev-price">$105.50</del>
							</p>
							<div class="label-product l_sale">
								15<span class="symbol-percent">%</span>
							</div>
						</div>
						<div class="pro-actions">
							<div class="actions-primary">
								<a href="cart.html" title="Th??m v??o gi??? h??ng">+ Th??m v??o gi??? h??ng</a>
							</div>
							<div class="actions-secondary">
								<a href="compare.html" title="Compare"><i
									class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
									href="wishlist.html" title="WishList"><i
									class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
							</div>
						</div>
					</div>
					<!-- Product Content End -->
					<span class="sticker-new">new</span>
				</div>
				<!-- Single Product End -->
				<!-- Single Product Start -->
				<div class="single-product">
					<!-- Product images Start -->
					<div class="pro-img">
						<a href="product.html"> <img class="primary-img"
							src="images/products/30.jpg" alt="single-product"> <img
							class="secondary-img" src="images/products/31.jpg"
							alt="single-product">
						</a>
						<div class="countdown" data-countdown="2020/03/01"></div>
						<a href="#" class="quick_view" data-toggle="modal"
							data-target="#myModal" title="Quick View"><i
							class="lnr lnr-magnifier"></i></a>
					</div>
					<!-- Product images End -->
					<!-- Product Content Start -->
					<div class="pro-content">
						<div class="pro-info">
							<h4>
								<a href="product.html">Calandiva Wrapped 12cm</a>
							</h4>
							<p>
								<span class="price">$84.45</span>
								<del class="prev-price">$105.50</del>
							</p>
							<div class="label-product l_sale">
								20<span class="symbol-percent">%</span>
							</div>
						</div>
						<div class="pro-actions">
							<div class="actions-primary">
								<a href="cart.html" title="Th??m v??o gi??? h??ng">+ Th??m v??o gi??? h??ng</a>
							</div>
							<div class="actions-secondary">
								<a href="compare.html" title="Compare"><i
									class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
									href="wishlist.html" title="WishList"><i
									class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
							</div>
						</div>
					</div>
					<!-- Product Content End -->
				</div>
				<!-- Single Product End -->
				<!-- Single Product Start -->
				<div class="single-product">
					<!-- Product images Start -->
					<div class="pro-img">
						<a href="product.html"> <img class="primary-img"
							src="images/products/8.jpg" alt="single-product"> <img
							class="secondary-img" src="images/products/9.jpg"
							alt="single-product">
						</a>
						<div class="countdown" data-countdown="2020/03/01"></div>
						<a href="#" class="quick_view" data-toggle="modal"
							data-target="#myModal" title="Quick View"><i
							class="lnr lnr-magnifier"></i></a>
					</div>
					<!-- Product images End -->
					<!-- Product Content Start -->
					<div class="pro-content">
						<div class="pro-info">
							<h4>
								<a href="product.html">Gpoly and Bark Eames Styl...</a>
							</h4>
							<p>
								<span class="price">$84.45</span>
								<del class="prev-price">$105.50</del>
							</p>
							<div class="label-product l_sale">
								10<span class="symbol-percent">%</span>
							</div>
						</div>
						<div class="pro-actions">
							<div class="actions-primary">
								<a href="cart.html" title="Th??m v??o gi??? h??ng">+ Th??m v??o gi??? h??ng</a>
							</div>
							<div class="actions-secondary">
								<a href="compare.html" title="Compare"><i
									class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
									href="wishlist.html" title="WishList"><i
									class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
							</div>
						</div>
					</div>
					<!-- Product Content End -->
					<span class="sticker-new">new</span>
				</div>
				<!-- Single Product End -->
				<!-- Single Product Start -->
				<div class="single-product">
					<!-- Product images Start -->
					<div class="pro-img">
						<a href="product.html"> <img class="primary-img"
							src="images/products/10.jpg" alt="single-product"> <img
							class="secondary-img" src="images/products/11.jpg"
							alt="single-product">
						</a>
						<div class="countdown" data-countdown="2020/03/01"></div>
						<a href="#" class="quick_view" data-toggle="modal"
							data-target="#myModal" title="Quick View"><i
							class="lnr lnr-magnifier"></i></a>
					</div>
					<!-- Product images End -->
					<!-- Product Content Start -->
					<div class="pro-content">
						<div class="pro-info">
							<h4>
								<a href="product.html">Poly and Bark Vortex Side</a>
							</h4>
							<p>
								<span class="price">$84.45</span>
								<del class="prev-price">$105.50</del>
							</p>
							<div class="label-product l_sale">
								37<span class="symbol-percent">%</span>
							</div>
						</div>
						<div class="pro-actions">
							<div class="actions-primary">
								<a href="cart.html" title="Th??m v??o gi??? h??ng">+ Th??m v??o gi??? h??ng</a>
							</div>
							<div class="actions-secondary">
								<a href="compare.html" title="Compare"><i
									class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
									href="wishlist.html" title="WishList"><i
									class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
							</div>
						</div>
					</div>
					<!-- Product Content End -->
					<span class="sticker-new">new</span>
				</div>
				<!-- Single Product End -->
			</div>
			<!-- Hot Deal Product Active End -->

		</div>
		<!-- Container End -->
	</div>
	<!-- Hot Deal Products End Here -->
	<!-- Hot Deal Products End Here -->

	<!-- Big Banner Start Here -->
	<div class="big-banner mt-100 pb-85 mt-sm-60 pb-sm-45">
		<div class="container banner-2">
			<div class="banner-box">
				<div class="col-img">
					<a href="#"><img src="images/banner/banner3-1.jpg" alt="banner 3"></a>
				</div>
				<div class="col-img">
					<a href="#"><img src="images/banner/banner3-2.jpg" alt="banner 3"></a>
				</div>
			</div>
			<div class="banner-box">
				<div class="col-img">
					<a href="#"><img src="images/banner/banner3-3.jpg" alt="banner 3"></a>
				</div>
			</div>
			<div class="banner-box">
				<div class="col-img">
					<a href="#"><img src="images/banner/banner3-4.jpg" alt="banner 3"></a>
				</div>
				<div class="col-img">
					<a href="#"><img src="images/banner/banner3-5.jpg" alt="banner 3"></a>
				</div>
			</div>
			<div class="banner-box">
				<div class="col-img">
					<a href="#"><img src="images/banner/banner3-6.jpg" alt="banner 3"></a>
				</div>
			</div>
			<div class="banner-box">
				<div class="col-img">
					<a href="#"><img src="images/banner/banner3-7.jpg" alt="banner 3"></a>
				</div>
				<div class="col-img">
					<a href="#"><img src="images/banner/banner3-8.jpg" alt="banner 3"></a>
				</div>
			</div>
		</div>
		<!-- Container End -->
	</div>
	<!-- Big Banner End Here -->
	<!-- Arrivals Products Area Start Here -->
	<div class="arrivals-product pb-85 pb-sm-45">
		<div class="container">
			<div class="main-product-tab-area">
				<div class="tab-menu mb-25">
					<div class="section-ttitle">
						<h1 style="font-weight: bold;">S???n ph???m m???i</h1>
					</div>
					<!-- Nav tabs -->
					<ul class="nav tabs-area" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#fshion">Fashion</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#beauty">Beauty</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#electronics">Sport/Outdoor</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#kids">Living</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#beauty">Food</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#kids">Baby/Kids</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#electronics">Electronics </a></li>
					</ul>

				</div>

				<!-- Tab Contetn Start -->
				<div class="tab-content">
					<div id="fshion" class="tab-pane fade">
						<!-- Arrivals Product Activation Start Here -->
						<div class="electronics-pro-active owl-carousel">
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/1.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/2.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Work Lamp Silver Proin</a>
											</h4>
											<p>
												<span class="price">$320.45</span>
												<del class="prev-price">$400.50</del>
											</p>
											<div class="label-product l_sale">
												30<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/3.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/4.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Gpoly and Bark Eames Style</a>
											</h4>
											<p>
												<span class="price">$150.30</span>
												<del class="prev-price">$175.50</del>
											</p>
											<div class="label-product l_sale">
												10<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/5.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/6.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/8.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/9.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Eames and Bark Style</a>
											</h4>
											<p>
												<span class="price">$180.45</span>
												<del class="prev-price">$200.50</del>
											</p>
											<div class="label-product l_sale">
												18<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/11.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/12.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Eames and Vortex Side</a>
											</h4>
											<p>
												<span class="price">$160.45</span>
												<del class="prev-price">$190.50</del>
											</p>
											<div class="label-product l_sale">
												12<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/15.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/16.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Bark Vortex Side Eames</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/13.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/14.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/1.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/7.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
						</div>
						<!-- Arrivals Product Activation End Here -->
					</div>
					<!-- #fshion End Here -->
					<div id="kids" class="tab-pane fade show active">
						<!-- Arrivals Product Activation Start Here -->
						<div class="electronics-pro-active owl-carousel">
							<!-- Double Product Start -->
							<c:forEach var = "i" begin = "0" step="2" end = "${lstSanPhamMoi.size() - 1}">
						         <div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="${urlChiTiet }/${lstSanPhamMoi.get(i).maSanPham }"> <img class="primary-img"
											src="images/${lstSanPhamMoi.get(i).anh }" alt="single-product"> <img
											class="secondary-img" src="images/${lstSanPhamMoi.get(i).anh }"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="${urlChiTiet }/${lstSanPhamMoi.get(i).maSanPham }">${lstSanPhamMoi.get(i).tenSanPham }</a>
											</h4>
											<p>
												<span class="price"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${lstSanPhamMoi.get(i).giaTien }" /> VND</span>
											</p>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a class="addGioHang" data-sp="${lstSanPhamMoi.get(i).maSanPham }" href="javascript:void(0)" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="${urlChiTiet }/${lstSanPhamMoi.get(i+1).maSanPham }"> <img class="primary-img"
											src="images/${lstSanPhamMoi.get(i+1).anh}" alt="single-product"> <img
											class="secondary-img" src="images/${lstSanPhamMoi.get(i+1).anh}"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="${urlChiTiet }/${lstSanPhamMoi.get(i+1).maSanPham }">${lstSanPhamMoi.get(i+1).tenSanPham}</a>
											</h4>
											<p>
												<span class="price"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${lstSanPhamMoi.get(i+1).giaTien }" /> VND</span>
											</p>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a class="addGioHang" data-sp="${lstSanPhamMoi.get(i+1).maSanPham }" href="javascript:void(0)" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
						    </c:forEach>
							
							<!-- Double Product End -->
						</div>
						<!-- Arrivals Product Activation End Here -->
					</div>
					<!-- #fshion End Here -->
					<div id="beauty" class="tab-pane fade">
						<!-- Arrivals Product Activation Start Here -->
						<div class="electronics-pro-active owl-carousel">
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/43.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/42.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/41.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/39.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/5.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/6.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/9.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/10.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/11.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/12.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/3.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/4.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/43.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/42.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/1.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/7.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
						</div>
						<!-- Arrivals Product Activation End Here -->
					</div>
					<!-- #beauty End Here -->
					<div id="electronics" class="tab-pane fade">
						<!-- Arrivals Product Activation Start Here -->
						<div class="electronics-pro-active owl-carousel">
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/17.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/18.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Flos Chasen S2 Suspension</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/19.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/20.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Country Squire Florist</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/20.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/21.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Concord Fabric Single</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/21.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/22.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Poly and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/23.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/24.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Gpoly and Bark Eames Style</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/24.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/25.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Vortex and Bark Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/26.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/27.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Bark and Vortex Side</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="product.html"> <img class="primary-img"
											src="images/products/28.jpg" alt="single-product"> <img
											class="secondary-img" src="images/products/29.jpg"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="product.html">Electronic and Bark Vortex</a>
											</h4>
											<p>
												<span class="price">$84.45</span>
												<del class="prev-price">$105.50</del>
											</p>
											<div class="label-product l_sale">
												20<span class="symbol-percent">%</span>
											</div>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
											</div>
											<div class="actions-secondary">
												<a href="compare.html" title="Compare"><i
													class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
													href="wishlist.html" title="WishList"><i
													class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
									<span class="sticker-new">new</span>
								</div>
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
						</div>
						<!-- Arrivals Product Activation End Here -->
					</div>
					<!-- #electronics End Here -->
				</div>
				<!-- Tab Content End -->
			</div>
			<!-- main-product-tab-area-->
		</div>
		<!-- Container End -->
	</div>
	<!-- Arrivals Products Area End Here -->
	<!-- Arrivals Products Area Start Here -->
	<div class="second-arrivals-product pb-45 pb-sm-5">
		<div class="container">
			<div class="main-product-tab-area">
				<div class="tab-menu mb-25">
					<div class="section-ttitle">
						<h1 style="font-weight: bold;">S???n ph???m b??n ch???y</h1>
					</div>
					<!-- Nav tabs -->
					<ul class="nav tabs-area" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#electronics2">Electronics </a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#beauty2">Beauty</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#electronics2">Sport/Outdoor</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#kids2">Living</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#beauty2">Food</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#kids2">Baby/Kids</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#fshion2">Fashion</a></li>
					</ul>

				</div>

				<!-- Tab Contetn Start -->
				<div class="tab-content">
					<div id="fshion2" class="tab-pane fade">
						<!-- Arrivals Product Activation Start Here -->
						<div class="best-seller-pro-active owl-carousel">
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/1.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/2.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Work Lamp Silver Proin</a>
										</h4>
										<p>
											<span class="price">$320.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/3.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/4.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Gpoly and Bark Eames Style</a>
										</h4>
										<p>
											<span class="price">$150.30</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/5.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/6.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$150.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/8.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/9.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Eames and Bark Style</a>
										</h4>
										<p>
											<span class="price">$180.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/11.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/12.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Eames and Vortex Side</a>
										</h4>
										<p>
											<span class="price">$160.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/15.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/16.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Bark Vortex Side Eames</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/13.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/14.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$95.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/1.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/7.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
						</div>
						<!-- Arrivals Product Activation End Here -->
					</div>
					<!-- #fshion End Here -->
					<div id="kids2" class="tab-pane fade">
						<!-- Arrivals Product Activation Start Here -->
						<div class="best-seller-pro-active owl-carousel">
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/42.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/43.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Utensils and Knives Block</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/40.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/41.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Terra Xpress HE Cooking </a>
										</h4>
										<p>
											<span class="price">$63.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/39.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/38.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Robert Welch Knife Block</a>
										</h4>
										<p>
											<span class="price">$100.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/36.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/37.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$90.50</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/35.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/36.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Bark and Vortex Side</a>
										</h4>
										<p>
											<span class="price">$69.20</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/34.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/35.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Compary and Bark Vortex Shewe</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/32.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/33.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">kallery kids weare</a>
										</h4>
										<p>
											<span class="price">$98.50</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/1.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/7.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
						</div>
						<!-- Arrivals Product Activation End Here -->
					</div>
					<!-- #fshion End Here -->
					<div id="beauty2" class="tab-pane fade">
						<!-- Arrivals Product Activation Start Here -->
						<div class="best-seller-pro-active owl-carousel">
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/43.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/42.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/41.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/39.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/5.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/6.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/9.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/10.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/11.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/12.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
							<!-- Single Product Start -->
							<div class="single-product">
								<!-- Product images Start -->
								<div class="pro-img">
									<a href="product.html"> <img class="primary-img"
										src="images/products/3.jpg" alt="single-product"> <img
										class="secondary-img" src="images/products/4.jpg"
										alt="single-product">
									</a> <a href="#" class="quick_view" data-toggle="modal"
										data-target="#myModal" title="Quick View"><i
										class="lnr lnr-magnifier"></i></a>
								</div>
								<!-- Product images End -->
								<!-- Product Content Start -->
								<div class="pro-content">
									<div class="pro-info">
										<h4>
											<a href="product.html">Poly and Bark Vortex Side</a>
										</h4>
										<p>
											<span class="price">$84.45</span>
										</p>
									</div>
									<div class="pro-actions">
										<div class="actions-primary">
											<a href="cart.html" title="Th??m v??o gi??? h??ng"> + Th??m v??o gi??? h??ng</a>
										</div>
										<div class="actions-secondary">
											<a href="compare.html" title="Compare"><i
												class="lnr lnr-sync"></i> <span>Add To Compare</span></a> <a
												href="wishlist.html" title="WishList"><i
												class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
										</div>
									</div>
								</div>
								<!-- Product Content End -->
							</div>
							<!-- Single Product End -->
						</div>
						<!-- Arrivals Product Activation End Here -->
					</div>
					<!-- #beauty End Here -->
					<div id="electronics2" class="tab-pane fade show active">
						<!-- Arrivals Product Activation Start Here -->
						<div class="best-seller-pro-active owl-carousel">
							<c:if test="${not empty lstSanPhamBanChay }">
								<c:forEach var="sp" items="${lstSanPhamBanChay }">
									<!-- Single Product Start -->
									<div class="single-product">
										<!-- Product images Start -->
										<div class="pro-img">
											<a href="${urlChiTiet }/${sp.maSanPham }"> <img class="primary-img"
												src="images/${sp.anh }" alt="single-product"> <img
												class="secondary-img" src="images/${sp.anh }"
												alt="single-product">
											</a> <a href="#" class="quick_view" data-toggle="modal"
												data-target="#myModal" title="Quick View"><i
												class="lnr lnr-magnifier"></i></a>
										</div>
										<!-- Product images End -->
										<!-- Product Content Start -->
										<div class="pro-content">
											<div class="pro-info">
												<h4>
													<a href="${urlChiTiet }/${sp.maSanPham }">${sp.tenSanPham }</a>
												</h4>
												<p>
													<span class="price"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${sp.giaTien}" /> VND</span>
												</p>
											</div>
											<div class="pro-actions">
												<div class="actions-primary">
													<a class="addGioHang" data-sp="${sp.maSanPham }" href="javascript:void(0)" title="Th??m v??o gi??? h??ng"> + Th??m
														v??o gi??? h??ng</a>
												</div>
											</div>
										</div>
										<!-- Product Content End -->
									</div>
									<!-- Single Product End -->
								</c:forEach>
							</c:if>
						</div>
						<!-- Arrivals Product Activation End Here -->
					</div>
					<!-- #electronics End Here -->
				</div>
				<!-- Tab Content End -->
			</div>
			<!-- main-product-tab-area-->
		</div>
		<!-- Container End -->
	</div>
	<!-- Arrivals Products Area End Here -->
	<!-- Like Products Area Start Here -->
	<div class="like-product ptb-95 off-white-bg pt-sm-50 pb-sm-55 ">
		<div class="container">
			<div class="like-product-area">
				<h1 style="font-weight: bold; font-size: 30px" class="section-ttitle2 mb-30">S???n ph???m n???i b???t</h1>
				<!-- Arrivals Product Activation Start Here -->
				<div class="like-pro-active owl-carousel">
					<c:if test="${not empty lstSanPham }">
						<c:forEach var="sp" items="${lstSanPham }">
							<!-- Double Product Start -->
							<div class="double-product">
								<!-- Single Product Start -->
								<div class="single-product">
									<!-- Product images Start -->
									<div class="pro-img">
										<a href="${urlChiTiet }/${sp.maSanPham }"> <img class="primary-img"
											src="images/${sp.anh }" alt="single-product"> <img
											class="secondary-img" src="images/${sp.anh }"
											alt="single-product">
										</a> <a href="#" class="quick_view" data-toggle="modal"
											data-target="#myModal" title="Quick View"><i
											class="lnr lnr-magnifier"></i></a>
									</div>
									<!-- Product images End -->
									<!-- Product Content Start -->
									<div class="pro-content">
										<div class="pro-info">
											<h4>
												<a href="${urlChiTiet }/${sp.maSanPham }">${sp.tenSanPham }</a>
											</h4>
											<p>
												<span class="price"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${sp.giaTien }" /> VND</span>
											</p>
										</div>
										<div class="pro-actions">
											<div class="actions-primary">
												<a class="addGioHang" data-sp="${sp.maSanPham }" href="javascript:void(0)" title="Th??m v??o gi??? h??ng"> + Th??m
													v??o gi??? h??ng</a>
											</div>
										</div>
									</div>
									<!-- Product Content End -->
								</div>
								<!-- Single Product End -->
								<!-- Single Product Start -->
								
								<!-- Single Product End -->
							</div>
							<!-- Double Product End -->
						</c:forEach>
					</c:if>
				</div>
				<!-- Arrivals Product Activation End Here -->
			</div>
			<!-- main-product-tab-area-->
		</div>
		<!-- Container End -->
	</div>
	<!-- Lile Products Area End Here -->
	<!-- Brand Banner Area Start Here -->
	
	
	
	<!-- Brand Banner Area End Here -->
	<div class="big-banner pb-100 pb-sm-60">
		<div class="container big-banner-box">
			<div class="col-img">
				<a href="#"> <img src="images/banner/5.jpg" alt="">
				</a>
			</div>
			<div class="col-img">
				<a href="#"> <img src="images/banner/h1-banner3.jpg" alt="">
				</a>
			</div>
		</div>
		<!-- Container End -->
	</div>
</body>
</html>