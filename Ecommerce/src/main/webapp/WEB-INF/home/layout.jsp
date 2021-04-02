<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- Khai báo thư viện sử dụng tiles để thiết kế giao diện-->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Thương mại điện tử</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicons -->
    <link rel="shortcut icon" href="<c:url value="/images/favicon.ico"/>">
    <!-- Fontawesome css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/css.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>">
    <!-- Ionicons css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/ionicons.min.css"/>">
    <!-- linearicons css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/linearicons.css"/>">
    <!-- Nice select css -->
   
    <!-- Jquery fancybox css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/jquery.fancybox.css"/>">
    <!-- Jquery ui price slider css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.min.css"/>">
    <!-- Meanmenu css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/meanmenu.min.css"/>">
    <!-- Nivo slider css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/nivo-slider.css"/>">
    <!-- Owl carousel css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"/>">
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <!-- Custom css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/default.css"/>">
    <!-- Main css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <!-- Responsive css -->
    <link rel="stylesheet" href="<c:url value="/resources/css/responsive.css"/>">

    <!-- Modernizer js -->
    <script src="<c:url value="/resources/js/vendor/modernizr-3.5.0.min.js"/>"></script>
    <script src="<c:url value="/resources/js/vendor/jquery-3.2.1.min.js"/>"></script>
    <style type="text/css">
    	.price{
		color: red;
		font-weight: normal;
		font-size: 19px;
		}
		.error{
			color: red;
		}
    </style>
</head>

<body>
    
    <!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
	<![endif]-->

    <!-- Main Wrapper Start Here -->
    <div class="wrapper">
        <!-- Banner Popup Start -->
        
        <!-- Banner Popup End -->
       <!-- Newsletter Popup Start -->
        
        <!-- Newsletter Popup End -->




        <!-- Main Header Area Start Here -->
        <tiles:insertAttribute name="header" />
        <!-- Main Header Area End Here -->




        <!-- body -->
		<tiles:insertAttribute name="body" />
        <!-- end body -->
        
        
        <!-- Footer Area Start Here -->
        <tiles:insertAttribute name="footer" />
        <!-- Footer Area End Here -->



        <!-- Quick View Content Start -->
        <div class="main-product-thumbnail quick-thumb-content">
            <div class="container">
                <!-- The Modal -->
                <div class="modal fade" id="myModal">
                    <div class="modal-dialog modal-lg modal-dialog-centered">
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <!-- Modal body -->
                            <div class="modal-body">
                                <div class="row">
                                    <!-- Main Thumbnail images Start -->
                                    <div class="col-lg-5 col-md-6 col-sm-5">
                                        <!-- Thumbnail Large images start -->
                                        <div class="tab-content">
                                            <div id="thumb1" class="tab-pane fade show active">
                                                <a data-fancybox="imagess" href="images/products/35.jpg"><img src="images/products/35.jpg" alt="product-view"></a>
                                            </div>
                                            <div id="thumb2" class="tab-pane fade">
                                                <a data-fancybox="imagess" href="images/products/13.jpg"><img src="images/products/13.jpg" alt="product-view"></a>
                                            </div>
                                            <div id="thumb3" class="tab-pane fade">
                                                <a data-fancybox="imagess" href="images/products/15.jpg"><img src="images/products/15.jpg" alt="product-view"></a>
                                            </div>
                                            <div id="thumb4" class="tab-pane fade">
                                                <a data-fancybox="imagess" href="images/products/4.jpg"><img src="images/products/4.jpg" alt="product-view"></a>
                                            </div>
                                            <div id="thumb5" class="tab-pane fade">
                                                <a data-fancybox="imagess" href="images/products/5.jpg"><img src="images/products/5.jpg" alt="product-view"></a>
                                            </div>
                                        </div>
                                        <!-- Thumbnail Large images End -->
                                        <!-- Thumbnail images End -->
                                        <div class="product-thumbnail mt-20">
                                            <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                                <a class="active" data-toggle="tab" href="#thumb1"><img src="images/products/35.jpg" alt="product-thumbnail"></a>
                                                <a data-toggle="tab" href="#thumb2"><img src="images/products/13.jpg" alt="product-thumbnail"></a>
                                                <a data-toggle="tab" href="#thumb3"><img src="images/products/15.jpg" alt="product-thumbnail"></a>
                                                <a data-toggle="tab" href="#thumb4"><img src="images/products/4.jpg" alt="product-thumbnail"></a>
                                                <a data-toggle="tab" href="#thumb5"><img src="images/products/5.jpg" alt="product-thumbnail"></a>
                                            </div>
                                        </div>
                                        <!-- Thumbnail images end -->
                                    </div>
                                    <!-- Main Thumbnail images End -->
                                    <!-- Thumbnail Description Start -->
                                    <div class="col-lg-7 col-md-6 col-sm-7">
                                        <div class="thubnail-desc fix mt-sm-40">
                                            <h3 class="product-header">Printed Summer Dress</h3>
                                            <div class="pro-price mtb-30">
                                                <p class="d-flex align-items-center"><span class="prev-price">16.51</span><span class="price">$15.19</span><span class="saving-price">save 8%</span></p>
                                            </div>
                                            <p class="mb-20 pro-desc-details">Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with ruffles at the bottom of the dress.</p>
                                            <div class="product-size mb-20 clearfix">
                                                <label>Size</label>
                                                <select class="">
                                                    <option>S</option>
                                                    <option>M</option>
                                                    <option>L</option>
                                                </select>
                                            </div>
                                            <div class="color mb-20">
                                                <label>color</label>
                                                <ul class="color-list">
                                                    <li>
                                                        <a class="orange active" href="#"></a>
                                                    </li>
                                                    <li>
                                                        <a class="paste" href="#"></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="box-quantity d-flex">
                                                <form action="#">
                                                    <input class="quantity mr-40" type="number" min="1" value="1">
                                                </form>
                                                <a class="add-cart" href="cart.html">add to cart</a>
                                            </div>
                                            <div class="pro-ref mt-15">
                                                <p><span class="in-stock"><i class="ion-checkmark-round"></i> IN STOCK</span></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Thumbnail Description End -->
                                </div>
                            </div>
                            <!-- Modal footer -->
                            <div class="custom-footer">
                                <div class="socila-sharing">
                                    <ul class="d-flex">
                                        <li>share</li>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Quick View Content End -->
    </div>
    <!-- Main Wrapper End Here -->
	<!-- jquery 3.2.1 -->

    <!-- Countdown js -->
    <script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
    <!-- Mobile menu js -->
    <script src="<c:url value="/resources/js/jquery.meanmenu.min.js"/>"></script>
    <!-- ScrollUp js -->
    <script src="<c:url value="/resources/js/jquery.scrollUp.js"/>"></script>
    <!-- Nivo slider js -->
    <script src="<c:url value="/resources/js/jquery.nivo.slider.js"/>"></script>
    <!-- Fancybox js -->
    <script src="<c:url value="/resources/js/jquery.fancybox.min.js"/>"></script>
    <!-- Jquery nice select js -->
    <script src="<c:url value="/resources/js/jquery.nice-select.min.js"/>"></script>
    <!-- Jquery ui price slider js -->
    <script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
    <!-- Owl carousel -->
    <script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
    <!-- Bootstrap popper js -->
    <script src="<c:url value="/resources/js/popper.min.js"/>"></script>
    <!-- Bootstrap js -->
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <!-- Plugin js -->
    <script src="<c:url value="/resources/js/plugins.js"/>"></script>
    <!-- Main activaion js -->
    <script src="<c:url value="/resources/js/main.js"/>"></script>
</body>

</html>