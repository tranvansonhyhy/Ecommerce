<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- Khai báo thư viện sử dụng tiles để thiết kế giao diện-->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function() {
		layGioHang();
		
		//Thêm sản phẩm vào giỏ hàng
		$(".addGioHang").click(function(){
			var id = $(this).data("sp");
			$.ajax({
			    url: "http://localhost:8080/Ecommerce/them-gio-hang/"+id,
			    contentType:"application/json",
			    dataType: "json",
			    type: "POST",
			   	data: {id: id},
			   	async:true,
			   	traditional:true,
			    success: function(result) {
			    	layGioHang();
			    }
			})
		});//Kết thúc hàm thêm giỏ hàng
		
		// gọi ajax lấy danh mục
		var ajaxCall = $.ajax({
			type : "GET",
			url : "http://localhost:8080/Ecommerce/laydanhmuc",
			dataType : 'json',
			contentType : "application/json; charset=utf-8",
			async : true,
		})
		
		ajaxCall.done(function(lstDM){
			var thongtin1="";
			var dem;
			for (var i=0 ; i < 9; i++){
				// gọi function để add danh mục con
					thongtin1 += chuoidm(lstDM[i].id, lstDM[i].tenDanhMuc, lstDM[i].lstDanhMuc);
				}
			if (lstDM.length >=9){
				// xử lý nếu chuỗi danh mục cha quá 8 (chống tràn)
				thongtin1 += "<li class='rx-parent'>"
        			+"<a class='rx-default'>Danh mục khác</a>"
    				+ "</li>"
				
            	
			}
			$('#danhMuc').append(thongtin1);
			for (var i =9; i <= lstDM.length; i++){
				var lop = "#danhMuc .right-menu:nth-child("+i+")";
				$(lop).addClass('rx-child');
			}
		});
		
	});
	
	// function gọi danh mục con
	function chuoidm(id, tendanhmuc, lstDMcon){
		var thongtin = "";
		thongtin += "<li data-value= "+id+"><a href='#'>"+tendanhmuc+"<i" 
				+ "class='fa fa-angle-right' aria-hidden='true'></i></a>"
	   	 		+ "<ul class='ht-dropdown megamenu first-megamenu'>";
	   	
	   	var dem = lstDMcon.length/3;
	   	dem = parseInt (dem);
	   	if(dem == 0){
	   		thongtin += chuoifor(0,dem, lstDMcon);
	   	}else{
	   		
	   		thongtin += chuoifor(0,dem, lstDMcon);
	   		thongtin += chuoifor(dem, dem*2, lstDMcon);
	   		thongtin += chuoifor(dem*2, lstDMcon.length, lstDMcon);
	   	}
	   	 	thongtin += ("</ul></li>");
	   	return thongtin;
	};
	function chuoifor(start,dem, lstDMcon){
		var chuoifor= ("<li class='single-megamenu'><ul>");
		for (var i = start ; i<dem; i++){
			chuoifor += ("<li><a href='<c:url value='/san-pham/"+lstDMcon[i].id+"'/>'>"+lstDMcon[i].tenDanhMuc+"</a></li>" );
		}
		chuoifor += ("</ul></li>");
		return chuoifor;
	}
	
	
	var formatTien = new Intl.NumberFormat('de-DE', {
		  style: 'currency',
		  currency: 'VND',
		});
	
	//Lấy danh sách giỏ hàng
	function layGioHang() {
		$('#gioHang').empty();
		$.ajax({
			type : "GET",
			url : "http://localhost:8080/Ecommerce/lstGioHang/",
			dataType : 'json',
			contentType : "application/json; charset=utf-8",
			async : true,
			traditional: true,
			success: function(gioHang){
				var chuoiGioHang = "";
				var tongGiaTien = 0;
				var soLuong = 0;
				$.each(gioHang, function(key, value) {
						soLuong += value.soLuong;
						tongGiaTien += value.tongTien
						chuoiGioHang += "<div class='single-cart-box'>"
	                    +"<div class='cart-img'>"
	                    +"<a href='#'><img src='<c:url value='/images/"+value.sanPham.anh+"'/>' alt='cart-images'></a>"
	                    +"<span class='pro-quantity'>"+value.soLuong+"</span>"
	                    +"</div>"
	                    +"<div class='cart-content'>"
	                    +"<h6><a href='product.html'>"+value.sanPham.tenSanPham+" </a></h6>"
	                    +"<span class='cart-price'>"+formatTien.format(value.sanPham.giaTien)+" </span>"
	                    +"<span>Kích thước: "+value.sanPham.kichThuoc+" </span>"
	                    +"<span>Màu: "+value.sanPham.mauSac+" </span>"
	                    +"</div>"
	                    +"<a class='del-icone' href='#'><i class='ion-close'></i></a>"
	                    +"</div>"
				})
				var thue = tongGiaTien * 0.01;
				tong = tongGiaTien + thue;
				var chuoiTongTien = "<div class='cart-footer'>"
                +"<ul class='price-content'>"
                +"<li>Tạm tính <span class ='price'>"+formatTien.format(tongGiaTien)+"</span></li>"
                +"<li>Thuế <span class ='price'>"+formatTien.format(thue)+"</span></li>"
                +"<li>Phí vận chuyển <span class ='price'>0 đ</span></li>"
                +"<li>Tổng tiền <span class ='price'>"+formatTien.format(tong)+"</span></li>"
                +"</ul>"
                +"<div class='cart-actions text-center'>"
                +"<a class='cart-checkout' href='<c:url value='/gio-hang'/>'>Chi Tiết</a>"
                +"</div>"
                +" </div>"
                console.log(soLuong)
                chuoiGioHang += chuoiTongTien;
				$('#gioHang').append(chuoiGioHang);
				$("#sl").text(soLuong)
			}
			
		})
	}
</script>
</head>
<body>
	<c:url value="/tim-kiem-ten" var="urlTimKiemTen"/>
	<c:url var="gio" value="/" scope="request" />
	<c:url value="/thong-tin" var="urlThongTin"/>
	 <header>
            <!-- Header Top Start Here -->
            <div class="header-top-area">
                <div class="container">
                    <!-- Header Top Start -->
                    <div class="header-top">
                        <ul>
                            <li><a href="#">Free Shipping với đơn hàng > 1 triệu</a></li>
                            <li><a href="#">Giỏ hàng</a></li>
                            <li><a href="checkout.html">Thanh toán</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Tài khoản<i class="lnr lnr-chevron-down"></i></a>
                                <!-- Dropdown Start -->
                                <ul class="ht-dropdown">
                                    <li><a href="<c:url value="/dang-nhap"/>">Đăng nhập</a></li>
                                    <li><a href="<c:url value="/dang-ky"/>">Đăng ký</a></li>
                                </ul>
                                <!-- Dropdown End -->
                            </li> 
                        </ul>
                    </div>
                    <!-- Header Top End -->
                </div>
                <!-- Container End -->
            </div>
            <!-- Header Top End Here -->
            <!-- Header Middle Start Here -->
            <div class="header-middle ptb-15" style="background: cyan;">
                <div class="container">
                    <div class="row align-items-center no-gutters">
                        <div class="col-lg-3 col-md-12">
                            <div class="logo mb-all-30">
                                <a href="<c:url value="/"/>"><img src="<c:url value="/images/logo/logo.png"/>"></a>
                            </div>
                        </div>
                        <!-- Categorie Search Box Start Here -->
                        <div class="col-lg-5 col-md-8 ml-auto mr-auto col-10">
                            <div class="categorie-search-box">
                                <s:form action="${urlTimKiemTen}" method="post" id="FormRegister"
										enctype="multipart/form-data" acceptCharset="utf-8">
                                    <input type="text" name="ma" placeholder="Nhập từ khóa tìm kiếm...">
                                    <button type="submit"><i class="lnr lnr-magnifier"></i></button>
                                </s:form>
                            </div>
                        </div>
                        <!-- Categorie Search Box End Here -->
                        <!-- Cart Box Start Here -->
                        <div class="col-lg-4 col-md-12">
                            <div class="cart-box mt-all-30">
                                <ul class="d-flex justify-content-lg-end justify-content-center align-items-center">
                                    <li><a href="#"><i class="lnr lnr-cart"></i><span class="my-cart"><span class="total-pro" id="sl"></span><span>Giỏ</span></span></a>
                                        <ul class="ht-dropdown cart-box-width">
                                            <li id="gioHang">
                                                <!-- Cart Box Start -->
                                                
                                                <!-- Cart Box End -->
                                                <!-- Cart Footer Inner Start -->
                                                
                                                <!-- Cart Footer Inner End -->
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="${urlThongTin }"><i class="lnr lnr-user"></i><span class="my-cart"><span> <strong>${khachHang.hoTen }</strong></span></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- Cart Box End Here -->
                    </div>
                    <!-- Row End -->
                </div>
                <!-- Container End -->
            </div>
            <!-- Header Middle End Here -->
            <!-- Header Bottom Start Here -->
            <div class="header-bottom  header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                         <div class="col-xl-3 col-lg-4 col-md-6 vertical-menu d-none d-lg-block">
                            <span class="categorie-title">Danh mục sản phẩm </span>
                        </div>                       
                        <div class="col-xl-9 col-lg-8 col-md-12 ">
                            <nav class="d-none d-lg-block">
                                <ul class="header-bottom-list d-flex">
                                    <li class="active"><a href="<c:url value ="/"/>">Trang chủ</a>  
                                    </li>
                                    <li><a href="shop.html">shop<i class="fa fa-angle-down"></i></a>
                                        <!-- Home Version Dropdown Start -->
                                        <ul class="ht-dropdown dropdown-style-two">
                                            <li><a href="<c:url value="gio-hang"/>">Giỏ hàng</a></li>
                                            <li><a href="<c:url value="thanh-toan"/>">Thanh toán</a></li>
                                        </ul>
                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="about.html">Liên hệ</a></li>
                                </ul>
                            </nav>
                            <div class="mobile-menu d-block d-lg-none">
                                <nav>
                                    <ul>
                                        <li><a href="index.html">Trang chủ</a>
                                        </li>
                                        <li><a href="shop.html">shop</a>
                                            <!-- Mobile Menu Dropdown Start -->
                                            <ul>
                                                <li><a href="cart.html">Giỏ hàng</a></li>
                                                <li><a href="checkout.html">Thanh toán</a></li>
                                            </ul>
                                            <!-- Mobile Menu Dropdown End -->
                                        </li>
                                        <li><a href="about.html">Liên hệ</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- Row End -->
                </div>
                <!-- Container End -->
            </div>
            <!-- Header Bottom End Here -->
            <!-- Mobile Vertical Menu Start Here -->
            <div class="container d-block d-lg-none">
                <div class="vertical-menu mt-30">
                    <span class="categorie-title mobile-categorei-menu">Danh mục sản phẩm</span>
                    <nav>  
                        <div id="cate-mobile-toggle" class="category-menu sidebar-menu sidbar-style mobile-categorei-menu-list menu-hidden ">
                            <ul>
                                <li class="has-sub"><a href="#">Automotive  Motorcycle </a>
                                    <ul class="category-sub">
                                        <li class="has-sub"><a href="shop.html">Office chair</a>
                                            <ul class="category-sub">
                                                <li><a href="shop.html">Bibendum Cursus</a></li>
                                                <li><a href="shop.html">Dignissim Turpis</a></li>
                                                <li><a href="shop.html">Dining room</a></li>
                                                <li><a href="shop.html">Dining room</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-sub"><a href="shop.html">Purus Lacus</a>
                                            <ul class="category-sub">
                                                <li><a href="shop.html">Magna Pellentesq</a></li>
                                                <li><a href="shop.html">Molestie Tortor</a></li>
                                                <li><a href="shop.html">Vehicula Element</a></li>
                                                <li><a href="shop.html">Sagittis Blandit</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="shop.html">gps accessories</a></li>
                                        <li><a href="shop.html">Microphones</a></li>
                                        <li><a href="shop.html">Wireless Transmitters</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">Sports  Outdoors</a>
                                    <ul class="category-sub">
                                        <li class="menu-tile">Cameras</li>
                                        <li><a href="shop.html">Cords and Cables</a></li>
                                        <li><a href="shop.html">gps accessories</a></li>
                                        <li><a href="shop.html">Microphones</a></li>
                                        <li><a href="shop.html">Wireless Transmitters</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">Home  Kitchen</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">kithen one</a></li>
                                        <li><a href="shop.html">kithen two</a></li>
                                        <li><a href="shop.html">kithen three</a></li>
                                        <li><a href="shop.html">kithen four</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">Phones  Tablets</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">phone one</a></li>
                                        <li><a href="shop.html">Tablet two</a></li>
                                        <li><a href="shop.html">Tablet three</a></li>
                                        <li><a href="shop.html">phone four</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">TV  Video</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">smart tv</a></li>
                                        <li><a href="shop.html">real video</a></li>
                                        <li><a href="shop.html">Microphones</a></li>
                                        <li><a href="shop.html">Wireless Transmitters</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li><a href="#">Beauty</a> </li>
                                <li><a href="#">Sport  tourisim</a></li>
                                <li><a href="#">Meat  Seafood</a></li>
                            </ul>
                        </div>
                        <!-- category-menu-end -->
                    </nav>
                </div>
            </div>
            <!-- Mobile Vertical Menu Start End -->
        </header>
</body>
</html>