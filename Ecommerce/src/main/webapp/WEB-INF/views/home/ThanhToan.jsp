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
	$(document).ready(function() {
		//Hiển thị combobox tỉnh thành
		$.ajax({
			type : "GET",
			url : "${thanhToan}lstTinh/",
			dataType : 'json',
			contentType : "application/json; charset=utf-8",
			async : true,
			traditional: true,
			success: function(result){
				var chuoi = "";
				$.each(result, function(index, t) {
						chuoi += "<option value='"+t.id+"'>"+t.ten+"</option>"
				})
				$('#tinhThanh').append(chuoi);
				var id1 = $("#tinhThanh").val();
				lstQuan(id1);
			}
			
		})
		
		
		
		//Hiển thị combobox quận huyện
		$("#tinhThanh").change(function(){
			var id = $("#tinhThanh").val();
			lstQuan(id);
		});
		
		//Hiển thị combobox phường xã
		$("#quanHuyen").change(function(){
			var id = $("#quanHuyen").val();
			lstPhuong(id);
		});
		
		$("#datMua").click(function(){
			$("#FormRegister").submit();
		})
	});
	
	function lstQuan(id) {
		$.ajax({
		    url: "${thanhToan}lstHuyen/"+id,
		    contentType:"application/json",
		    dataType: "json",
		    type: "GET",
		   	data: {id: id},
		   	async:true,
		   	traditional:true,
		    success: function(result) {
		    	var chuoi = "";
				$.each(result, function(index, t) {
						chuoi += "<option value='"+t.id+"'>"+t.ten+"</option>"
				})
				$('#quanHuyen').empty();
				$('#quanHuyen').append(chuoi);
				var id2 = $("#quanHuyen").val();
				lstPhuong(id2);
		    }
		})
	};
	
	function lstPhuong(id) {
		$.ajax({
		    url: "${thanhToan}lstXa/"+id,
		    contentType:"application/json",
		    dataType: "json",
		    type: "GET",
		   	data: {id: id},
		   	async:true,
		   	traditional:true,
		    success: function(result) {
		    	var chuoi = "";
				$.each(result, function(index, t) {
						chuoi += "<option value='"+t.id+"'>"+t.ten+"</option>"
				})
				$('#phuongXa').empty();
				$('#phuongXa').append(chuoi);
		    }
		})
	}
</script>
<style type="text/css">
.product-name {
	
	color: blue;
}

.amount{
	font-size: 13px;
	color: red;
}

.total amount{
	color: red;
}

#tinhThanh{
	display: block !important;
}

#tinhThanh{
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

#quanHuyen{
	display: block !important;
    width: 100%;
    height:34px;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.4;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
}

#phuongXa{
	display: block !important;
    width: 100%;
    height:34px;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.4;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
}

.nice-select{
	display: none !important;
}
</style>
</head>
<body>
	<c:url value="/dat-hang" var="urlAdd"/>
	<c:url var="thanhToan" value="/" scope="request" />
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
					<li><a href="shop.html">Thanh toán</a></li>
				</ul>
			</div>
		</div>
		<!-- Container End -->
	</div>

	<!-- coupon-area start -->
	<label></label>
	<!-- coupon-area end -->
	<!-- checkout-area start -->
	<div class="checkout-area pb-100 pt-15 pb-sm-60">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<s:form action="${urlAdd }" method="post" id="FormRegister"
						modelAttribute="soDiaChi" enctype="multipart/form-data"
						acceptCharset="utf-8">
						<div class="checkbox-form mb-sm-40">
							<h3>Thông tin đặt hàng</h3>
							<div class="row">
								<div class="col-md-12">
									<div class="checkout-form-list mb-30">
										<label>Họ và tên <span class="required">*</span></label> <s:input
											type="text" placeholder="Họ và tên" path="hoTen"/>
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list mb-30">
										<label>Email <span class="required">*</span></label> <s:input
											type="text" placeholder="Địa chỉ email..." path="email"/>
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list mb-30">
										<label>Điện thoại<span class="required">*</span></label> <s:input
											type="text" placeholder="" path="dienThoai"/>
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list mb-30">
										<label>Tỉnh/Thành phố <span class="required">*</span></label>
										<s:select id="tinhThanh" path="tinh">

										</s:select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list mb-30">
										<label>Quận/Huyện <span class="required">*</span></label> 
										<s:select id="quanHuyen" path="huyen">

										</s:select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list mb-30">
										<label>Phường/Xã <span class="required">*</span></label> 
										<s:select id="phuongXa" path="xa">

										</s:select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list mb-30">
										<label>Địa chỉ <span class="required">*</span></label> <input
											type="text" placeholder="Địa chỉ">
									</div>
								</div>
							</div>
							<div class="different-address">
								<div class="ship-different-title"></div>
								<div class="order-notes">
									<div class="checkout-form-list">
										<label>Ghi chú</label>
										<textarea id="checkout-mess" name="ghiChu" cols="30" rows="10"></textarea>
									</div>
								</div>
							</div>
							<label></label>
							<hr>
							<label></label>
							<div class="different-address">
								<div class="ship-different-title"></div>
								<div class="order-notes">
									<div class="checkout-form-list">
										<h5>Hình thức thanh toán</h5>
										<div
											style="width: 100%; height: auto; border: 1px solid rgb(221, 221, 221); border-radius: 5px">
											<div
												style="width: 100%; height: 100%; margin: 20px 20px 20px 20px">
												<div style="margin-bottom: 20px">
													<input type="radio"> &nbsp; <a><img alt=""
														src="images/icon/pay1.svg"> Thanh toán tiền mặt khi
														nhận hàng</a>
												</div>
												<div style="margin-bottom: 20px">
													<input type="radio"> &nbsp; <a><img alt=""
														src="images/icon/pay2.svg"> Thanh toán bằng thẻ quốc
														tế Visa,Master,JSB</a>
												</div>
												<div style="margin-bottom: 20px">
													<input type="radio"> &nbsp; <a><img alt=""
														src="images/icon/pay3.svg"> Thẻ ATM nội địa/Internet
														Banking (Miễn phí thanh toán)</a>
												</div>
												<div style="margin-bottom: 20px">
													<input type="radio"> &nbsp; <a><img alt=""
														src="images/icon/pay4.svg"> Thanh toán bằng ví MoMo</a>
												</div>
												<div>
													<input type="radio"> &nbsp; <a><img alt=""
														src="images/icon/pay5.svg"> Thanh toán bằng ZaloPay</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="different-address">
								<div class="ship-different-title"></div>
								<div class="order-notes">
									<div class="checkout-form-list">
										<div class="wc-proceed-to-checkout" style="width: 250px">
											<a href="javascript:void(0)" id="datMua"
												style="width: 250px; text-align: center; background: orange; font-size: 17px; font-weight: 500">ĐẶT
												MUA</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</s:form>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="your-order">
						<h3>Đơn hàng</h3>
						<div class="your-order-table table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-total"
											style="text-align: left; width: 350px;margin-right: 20px">Sản phẩm</th>
										<th class="product-total" style="text-align:; width: 190px;margin-right: 20px">Số lượng</th>
										
										<th class="product-total" style="text-align: left;">Giá
											tiền</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${not empty Cart }">
										<c:forEach var="c" items="${Cart }">
											<tr class="cart_item">
												<td class="product-name" style="text-align: left;font-size: 13px; ">
												${c.value.sanPham.tenSanPham }
												</td>
												<td class="" style="text-align: center;font-size: 13px; ">
												<span class="product-quantity"> × ${c.value.soLuong }</span>
												</td>
												<td class="product-total" style="text-align: left;"><span
													class="amount"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${c.value.tongTien }"/> đ</span></td>
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
								<tfoot>
									<tr class="cart-subtotal">
										<th style="text-align: left;">Tạm tính</th>
										<td></td>
										<td style="text-align: left;"><span class="amount"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${tongGiaTien }"/> đ</span></td>
									</tr>
									<tr class="cart-subtotal">
										<th style="text-align: left;">Thuế</th>
										<td></td>
										<td style="text-align: left;"><span class="amount"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${thue }"/> đ</span></td>
									</tr>
									<tr class="cart-subtotal">
										<th style="text-align: left;">Phí vận chuyển</th>
										<td></td>
										<td style="text-align: left;"><span class="amount">0 đ</span></td>
									</tr>
									<tr class="order-total">
										<th style="text-align: left;">Thành tiền</th>
										<td></td>
										<td style="text-align: left;"><span class="total amount" style="color: red;"><fmt:formatNumber maxFractionDigits = "3" type="number"
												value="${thanhTien }"/> đ</span></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- checkout-area end -->
</body>
</html>