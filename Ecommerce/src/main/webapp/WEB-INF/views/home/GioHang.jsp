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
<script type="text/javascript">
	$(document).ready(function () {
		$("#thanhToan").click(function(){
			$("#FormRegister").submit();
		})
	})
</script>
<style type="text/css">
	.noBorder {
    border:none !important;
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
				<div class="col-md-12 col-sm-12">
					<!-- Form Start -->
					<form action="#">
						<!-- Table Content Start -->
						<div class="table-content table-striped table-bordered mb-45">
							<table class="noBorder">
								<thead>
									<tr>
										<th class="product-thumbnail" style="border: none;font-weight: bold;">Ảnh</th>
										<th class="product-name" style="border: none;font-weight: bold;">Sản phẩm</th>
										<th class="product-price" style="border: none;font-weight: bold;">Giá tiền</th>
										<th class="product-quantity" style="border: none;font-weight: bold;">Số lượng</th>
										<th class="product-subtotal" style="border: none;font-weight: bold;">Thành tiền</th>
										<th class="product-remove" style="border: none;font-weight: bold;">Xoá khỏi giỏ</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${not empty Cart }">
										<c:forEach var="c" items="${Cart }">
											<tr style="border: none;">
												<td class="product-thumbnail" style="border: none;"><a href="#"><img
														src="<c:url value ="/images/${c.value.sanPham.anh }"/>" alt="cart-image"></a></td>
												<td class="product-name" style="border: none;"><a href="#">${c.value.sanPham.tenSanPham }</a></td>
												<td class="product-price" style="border: none;"><span class="amount"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${c.value.sanPham.giaTien }"/> đ</span></td>
												<td class="product-quantity" style="border: none;"><input type="number" name="soLuong"
													value="${c.value.soLuong }"></td>
												<td class="product-subtotal" style="border: none;"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${c.value.tongTien }"/> đ</td>
												<td class="product-remove" style="border: none;"><a href='<c:url value="/xoa-gio-hang/${c.key }"/>'><i
														class="fa fa-times" aria-hidden="true"></i></a></td>
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
						<!-- Table Content Start -->
						<div class="row">
							<!-- Cart Button Start -->
							<div class="col-md-8 col-sm-12">
								<div class="buttons-cart">
									<input type="submit" value="Cập nhật giỏ"> <a href="#">Tiếp tục mua hàng</a>
								</div>
							</div>
							<!-- Cart Button Start -->
							<!-- Cart Totals Start -->
							<div class="col-md-4 col-sm-12">
								<div class="cart_totals float-md-right text-md-right">
									<h2>Tổng tiền</h2>
									<br>
									<table class="float-md-right">
										<tbody>
											<tr class="cart-subtotal">
												<th>Tạm tính</th>
												<td><span class="amount"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${tongGiaTien }"/> vnd</span></td>
											</tr>
											<tr class="order-total">
												<th>Tổng giá tiền</th>
												<td><strong><span class="amount"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${tongGiaTien }"/> vnd</span></strong>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="wc-proceed-to-checkout">
										<a href="${urlMuaHang }" id="thanhToan">Thanh toán</a>
									</div>
								</div>
							</div>
							<!-- Cart Totals End -->
						</div>
						<!-- Row End -->
					</form>
					<!-- Form End -->
				</div>
			</div>
			<!-- Row End -->
		</div>
	</div>
	<!-- Cart Main Area End -->
</body>
</html>