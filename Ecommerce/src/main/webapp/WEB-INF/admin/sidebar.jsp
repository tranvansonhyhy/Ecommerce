<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/admin" var="urlhome"/>
	<c:url value="/admin/nguoi-dung" var="urlNguoiDung"/>
	<c:url value="/admin/them-nguoi-dung" var="urlNguoiDungAdd"/>
	<c:url value="/admin/vai-tro" var="urlVaiTro"/>
	<c:url value="/admin/san-pham" var="urlSanPham"/>
	<c:url value="/admin/san-pham-giam-gia" var="urlSanPhamGiamGia"/>
	<c:url value="/admin/them-san-pham" var="urlSanPhamAdd"/>
	<c:url value="/admin/don-hang" var="urlDonHang"/>
	<c:url value="/admin/chi-tiet-don-hang" var="urlChiTietDonHang"/>
	<div id="sidebarMain" class="d-none">
		<aside
			class="js-navbar-vertical-aside navbar navbar-vertical-aside navbar-vertical navbar-vertical-fixed navbar-expand-xl navbar-bordered  ">
			<div class="navbar-vertical-container">
				<div class="navbar-vertical-footer-offset">
					<div class="navbar-brand-wrapper justify-content-between">
						<!-- Logo -->


						<a class="navbar-brand" href="index.html" aria-label="Front">
							<img class="navbar-brand-logo" src="<c:url value="/resources/admin/svg/logos/logo.svg"/>"
							alt="Logo"> <img class="navbar-brand-logo-mini"
							src="<c:url value="/resources/admin/svg/logos/logo-short.svg"/>" alt="Logo">
						</a>

						<!-- End Logo -->

						<!-- Navbar Vertical Toggle -->
						<button type="button"
							class="js-navbar-vertical-aside-toggle-invoker navbar-vertical-aside-toggle btn btn-icon btn-xs btn-ghost-dark">
							<i class="tio-clear tio-lg"></i>
						</button>
						<!-- End Navbar Vertical Toggle -->
					</div>

					<!-- Content -->
					<div class="navbar-vertical-content">
						<ul class="navbar-nav navbar-nav-lg nav-tabs">
							<!-- Dashboards -->
							<li class="nav-item "><a
								class="js-nav-tooltip-link nav-link " href="${urlhome }"
								title="Welcome page" data-placement="left"> <i
									class="tio-home-vs-1-outlined nav-icon"></i> <span
									class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Trang chủ</span>
							</a></li>
							
							<!-- End Dashboards -->

							<li class="nav-item"><small class="nav-subtitle"
								title="Pages">Pages</small> <small
								class="tio-more-horizontal nav-subtitle-replacer"></small></li>

							<!-- Pages -->
							<li class="navbar-vertical-aside-has-menu show"><a
								class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle active"
								href="javascript:;" title="Pages"> <i
									class="tio-pages-outlined nav-icon"></i> <span
									class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Quản lý</span>
							</a>

								<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
									<li class="navbar-vertical-aside-has-menu "><a
										class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
										href="javascript:;" title="Users"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Người dùng</span>
									</a>

										<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
											<li class="nav-item"><a class="nav-link "
												href="${urlNguoiDung }" title="Overview"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Danh sách</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="${urlNguoiDungAdd }" title="Add User"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Thêm mới</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="${urlVaiTro }" title="Overview"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Vai trò</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="users-add-user.html" title="Add User"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Chức năng</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="users-add-user.html" title="Add User"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Phân quyền</span>
											</a></li>
										</ul></li>

									<li class="navbar-vertical-aside-has-menu "><a
										class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
										href="javascript:;" title="User Profile"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Thông tin cá nhân</span>
									</a>

										<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
											<li class="nav-item"><a class="nav-link "
												href="user-profile.html" title="Profile"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Hồ sơ</span>
											</a></li>
										</ul></li>
										
									<li class="navbar-vertical-aside-has-menu show"><a
										class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
										href="javascript:;" title="E-commerce"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Sản phẩm</span>
									</a>
										<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
											<li class="nav-item"><a class="nav-link "
												href="${urlSanPham }" title="Overview"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Danh sách</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="${urlSanPhamGiamGia }" title="Overview"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Danh sách giảm giá</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="${urlSanPhamAdd }" title="Checkout"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Thêm mới</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="ecommerce.html" title="Overview"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Danh mục</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="ecommerce-checkout.html" title="Checkout"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Loại sản phẩm</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="ecommerce.html" title="Overview"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Hãng sản xuất</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="ecommerce-checkout.html" title="Checkout"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Xuất sứ</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="ecommerce.html" title="Overview"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Thuộc tính</span>
											</a></li>
										</ul></li>

									<li class="navbar-vertical-aside-has-menu "><a
										class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
										href="javascript:;" title="Projects"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Khách hàng</span>
									</a>

										<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
											<li class="nav-item"><a class="nav-link "
												href="projects.html" title="Overview"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Danh sách</span>
											</a></li>
										</ul></li>

									<li class="navbar-vertical-aside-has-menu "><a
										class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
										href="javascript:;" title="Project"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Đơn hàng</span>
									</a>

										<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
											<li class="nav-item"><a class="nav-link "
												href="${urlDonHang }" title="Overview"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Danh sách</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="${urlChiTietDonHang }" title="Files"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Chi tiết</span>
											</a></li>
											<li class="nav-item"><a class="nav-link "
												href="project-activity.html" title="Activity"> <span
													class="tio-circle-outlined nav-indicator-icon"></span> <span
													class="text-truncate">Tình trạng</span>
											</a></li>
											
										</ul></li>
										
								</ul></li>
							<!-- End Pages -->

							<!-- Apps -->
							<li class="navbar-vertical-aside-has-menu "><a
								class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle "
								href="javascript:;" title="Apps"> <i
									class="tio-apps nav-icon"></i> <span
									class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Ứng dụng</span>
							</a>

								<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
									<li class="nav-item"><a class="nav-link "
										href="apps-kanban.html" title="Kanban"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Kanban</span>
									</a></li>
									<li class="nav-item"><a class="nav-link "
										href="apps-calendar.html" title="Calendar"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Calendar <span
												class="badge badge-info badge-pill ml-1">New</span></span>
									</a></li>
									<li class="nav-item"><a class="nav-link "
										href="apps-invoice-generator.html" title="Invoice Generator">
											<span class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Invoice Generator</span>
									</a></li>
									<li class="nav-item"><a class="nav-link "
										href="apps-file-manager.html" title="File Manager"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">File Manager</span>
									</a></li>
								</ul></li>
							<!-- End Apps -->

							<!-- Authentication -->
							<li class="navbar-vertical-aside-has-menu "><a
								class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle "
								href="javascript:;" title="Authentication"> <i
									class="tio-lock-outlined nav-icon"></i> <span
									class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Đăng nhập</span>
							</a>

								<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
									
									<li class="nav-item"><a class="nav-link "
										href="error-404.html" title="Error 404"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Đăng nhập</span>
									</a></li>

									<li class="nav-item"><a class="nav-link "
										href="error-500.html" title="Error 500"> <span
											class="tio-circle nav-indicator-icon"></span> <span
											class="text-truncate">Đăng xuất</span>
									</a></li>
								</ul></li>
							<!-- End Authentication -->

							

							<li class="nav-item"><small class="nav-subtitle"
								title="Layouts">Layouts</small> <small
								class="tio-more-horizontal nav-subtitle-replacer"></small></li>

							

							<li class="nav-item">
								<div class="nav-divider"></div>
							</li>

							<li class="nav-item"><small class="nav-subtitle"
								title="Documentation">Documentation</small> <small
								class="tio-more-horizontal nav-subtitle-replacer"></small></li>

							

							<li class="nav-item"><small
								class="tio-more-horizontal nav-subtitle-replacer"></small></li>

							<!-- Front Builder -->
							<li class="nav-item nav-footer-item "><a
								class="d-none d-md-flex js-hs-unfold-invoker nav-link nav-link-toggle"
								href="javascript:;"
								data-hs-unfold-options='{
                 "target": "#styleSwitcherDropdown",
                 "type": "css-animation",
                 "animationIn": "fadeInRight",
                 "animationOut": "fadeOutRight",
                 "hasOverlay": true,
                 "smartPositionOff": true
               }'>
									<i class="tio-tune nav-icon"></i>
							</a> <a class="d-flex d-md-none nav-link nav-link-toggle"
								href="javascript:;"> <i class="tio-tune nav-icon"></i>
							</a></li>
							<!-- End Front Builder -->

							<!-- Help -->
							<li class="navbar-vertical-aside-has-menu nav-footer-item ">
								<a
								class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle "
								href="javascript:;" title="Help"> <i
									class="tio-home-vs-1-outlined nav-icon"></i> <span
									class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Help</span>
							</a>

								<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
									<li class="nav-item"><a class="nav-link" href="#"
										title="Resources &amp; tutorials"> <i
											class="tio-book-outlined dropdown-item-icon"></i> Resources
											&amp; tutorials
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#"
										title="Keyboard shortcuts"> <i
											class="tio-command-key dropdown-item-icon"></i> Keyboard
											shortcuts
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#"
										title="Connect other apps"> <i
											class="tio-alt dropdown-item-icon"></i> Connect other apps
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#"
										title="What's new?"> <i
											class="tio-gift dropdown-item-icon"></i> What's new?
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#"
										title="Contact support"> <i
											class="tio-chat-outlined dropdown-item-icon"></i> Contact
											support
									</a></li>
								</ul>
							</li>
							<!-- End Help -->

							<!-- Language -->
							<li class="navbar-vertical-aside-has-menu nav-footer-item ">
								<a
								class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle "
								href="javascript:;" title="Language"> <img
									class="avatar avatar-xss avatar-circle"
									src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/us.svg"/>"
									alt="United States Flag"> <span
									class="navbar-vertical-aside-mini-mode-hidden-elements text-truncate">Language</span>
							</a>

								<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
									<li class="nav-item"><a class="nav-link" href="#"
										title="English (US)"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/us.svg"/>" alt="Flag">
											English (US)
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#"
										title="English (UK)"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/gb.svg"/>" alt="Flag">
											English (UK)
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#"
										title="Deutsch"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/de.svg"/>" alt="Flag">
											Deutsch
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#"
										title="Dansk"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/dk.svg"/>" alt="Flag">
											Dansk
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#"
										title="Italiano"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/it.svg"/>" alt="Flag">
											Italiano
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#"
										title="中文 (繁體)"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/cn.svg"/>" alt="Flag">
											中文 (繁體)
									</a></li>
								</ul>
							</li>
							<!-- End Language -->
						</ul>
					</div>
					<!-- End Content -->

					<!-- Footer -->
					<div class="navbar-vertical-footer">
						<ul class="navbar-vertical-footer-list">
							<li class="navbar-vertical-footer-list-item">
								<!-- Unfold -->
								<div class="hs-unfold">
									<a
										class="js-hs-unfold-invoker btn btn-icon btn-ghost-secondary rounded-circle"
										href="javascript:;"
										data-hs-unfold-options='{
                  "target": "#styleSwitcherDropdown",
                  "type": "css-animation",
                  "animationIn": "fadeInRight",
                  "animationOut": "fadeOutRight",
                  "hasOverlay": true,
                  "smartPositionOff": true
                 }'>
										<i class="tio-tune"></i>
									</a>
								</div> <!-- End Unfold -->
							</li>

							<li class="navbar-vertical-footer-list-item">
								<!-- Other Links -->
								<div class="hs-unfold">
									<a
										class="js-hs-unfold-invoker btn btn-icon btn-ghost-secondary rounded-circle"
										href="javascript:;"
										data-hs-unfold-options='{
                  "target": "#otherLinksDropdown",
                  "type": "css-animation",
                  "animationIn": "slideInDown",
                  "hideOnScroll": true
                 }'>
										<i class="tio-help-outlined"></i>
									</a>

									<div id="otherLinksDropdown"
										class="hs-unfold-content dropdown-unfold dropdown-menu navbar-vertical-footer-dropdown">
										<span class="dropdown-header">Help</span> <a
											class="dropdown-item" href="#"> <i
											class="tio-book-outlined dropdown-item-icon"></i> <span
											class="text-truncate pr-2" title="Resources &amp; tutorials">Resources
												&amp; tutorials</span>
										</a> <a class="dropdown-item" href="#"> <i
											class="tio-command-key dropdown-item-icon"></i> <span
											class="text-truncate pr-2" title="Keyboard shortcuts">Keyboard
												shortcuts</span>
										</a> <a class="dropdown-item" href="#"> <i
											class="tio-alt dropdown-item-icon"></i> <span
											class="text-truncate pr-2" title="Connect other apps">Connect
												other apps</span>
										</a> <a class="dropdown-item" href="#"> <i
											class="tio-gift dropdown-item-icon"></i> <span
											class="text-truncate pr-2" title="What's new?">What's
												new?</span>
										</a>
										<div class="dropdown-divider"></div>
										<span class="dropdown-header">Contacts</span> <a
											class="dropdown-item" href="#"> <i
											class="tio-chat-outlined dropdown-item-icon"></i> <span
											class="text-truncate pr-2" title="Contact support">Contact
												support</span>
										</a>
									</div>
								</div> <!-- End Other Links -->
							</li>

							<li class="navbar-vertical-footer-list-item">
								<!-- Language -->
								<div class="hs-unfold">
									<a
										class="js-hs-unfold-invoker btn btn-icon btn-ghost-secondary rounded-circle"
										href="javascript:;"
										data-hs-unfold-options='{
                  "target": "#languageDropdown",
                  "type": "css-animation",
                  "animationIn": "slideInDown",
                  "hideOnScroll": true
                 }'>
										<img class="avatar avatar-xss avatar-circle"
										src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/us.svg"/>"
										alt="United States Flag">
									</a>

									<div id="languageDropdown"
										class="hs-unfold-content dropdown-unfold dropdown-menu navbar-vertical-footer-dropdown">
										<span class="dropdown-header">Select language</span> <a
											class="dropdown-item" href="#"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/us.svg"/>" alt="Flag">
											<span class="text-truncate pr-2" title="English">English
												(US)</span>
										</a> <a class="dropdown-item" href="#"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/gb.svg"/>" alt="Flag">
											<span class="text-truncate pr-2" title="English">English
												(UK)</span>
										</a> <a class="dropdown-item" href="#"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/de.svg"/>" alt="Flag">
											<span class="text-truncate pr-2" title="Deutsch">Deutsch</span>
										</a> <a class="dropdown-item" href="#"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/dk.svg"/>" alt="Flag">
											<span class="text-truncate pr-2" title="Dansk">Dansk</span>
										</a> <a class="dropdown-item" href="#"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/it.svg"/>" alt="Flag">
											<span class="text-truncate pr-2" title="Italiano">Italiano</span>
										</a> <a class="dropdown-item" href="#"> <img
											class="avatar avatar-xss avatar-circle mr-2"
											src="<c:url value="/resources/admin/vendor/flag-icon-css/flags/1x1/cn.svg"/>" alt="Flag">
											<span class="text-truncate pr-2" title="中文 (繁體)">中文
												(繁體)</span>
										</a>
									</div>
								</div> <!-- End Language -->
							</li>
						</ul>
					</div>
					<!-- End Footer -->
				</div>
			</div>
		</aside>
	</div>



	<div id="sidebarCompact" class="d-none">
		<aside
			class="js-navbar-vertical-aside navbar navbar-vertical-aside navbar-vertical navbar-vertical-fixed navbar-expand-xl navbar-bordered  ">
			<div class="navbar-vertical-container">
				<div class="navbar-brand d-flex justify-content-center">
					<!-- Logo -->


					<a class="navbar-brand" href="index.html" aria-label="Front"> <img
						class="navbar-brand-logo-short"
						src="<c:url value="/resources/admin/svg/logos/logo-short.svg"/>" alt="Logo">
					</a>

					<!-- End Logo -->
				</div>

				<!-- Content -->
				<div class="navbar-vertical-content">
					<ul class="navbar-nav nav-compact">
						<!-- Dashboards -->
						<li class="nav-item"><a class="nav-link "
							href="${urlhome }" title="Welcome Page"> <i
								class="tio-home-vs-1-outlined nav-icon"></i> <span
								class="nav-compact-title text-truncate">Trang chủ</span>
						</a></li>
						<!-- End Dashboards -->

						<!-- Pages -->
						<li class="navbar-vertical-aside-has-menu nav-item"><a
							class="js-navbar-vertical-aside-menu-link nav-link "
							href="javascript:;" title="Pages"> <i
								class="tio-pages-outlined nav-icon"></i> <span
								class="nav-compact-title text-truncate">Quản lý</span>
						</a>

							<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
								<li class="navbar-vertical-aside-has-menu "><a
									class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
									href="javascript:;" title="Users"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Người dùng</span>
								</a>

									<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
										<li class="nav-item"><a class="nav-link "
											href="${urlNguoiDung }" title="Overview"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Danh sách</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="${urlNguoiDungAdd }" title="Leaderboard"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Thêm mới</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="${urlVaiTro }" title="Add User"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Vai trò</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="users-leaderboard.html" title="Leaderboard"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Chức năng</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="users-add-user.html" title="Add User"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Phân quyền</span>
										</a></li>
									</ul></li>

								<li class="navbar-vertical-aside-has-menu "><a
									class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
									href="javascript:;" title="User Profile"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Thông tin cá nhân <span
											class="badge badge-primary badge-pill ml-1">5</span></span>
								</a>

									<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
										<li class="nav-item"><a class="nav-link "
											href="user-profile.html" title="Profile"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Hồ sơ</span>
										</a></li>
									</ul></li>

								<li class="navbar-vertical-aside-has-menu "><a
									class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
									href="javascript:;" title="Account"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Sản phẩm</span>
								</a>

									<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
										<li class="nav-item"><a class="nav-link "
											href="${urlSanPham}" title="Settings"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Danh sách</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="${urlSanPhamGiamGia }" title="Billing"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Danh sách giảm giá</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="${urlSanPhamAdd }" title="Billing"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Thêm mới</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="account-invoice.html" title="Invoice"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Danh mục</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="account-api-keys.html" title="API Keys"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Loại sản phẩm</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="account-billing.html" title="Billing"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Hãng sản xuất</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="account-invoice.html" title="Invoice"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Xuất sứ</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="account-api-keys.html" title="API Keys"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Thuộc tính</span>
										</a></li>
									</ul></li>
								<li class="navbar-vertical-aside-has-menu "><a
									class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
									href="javascript:;" title="User Profile"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Khách hàng <span
											class="badge badge-primary badge-pill ml-1">5</span></span>
								</a>
									<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
										<li class="nav-item"><a class="nav-link "
											href="user-profile.html" title="Profile"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Danh sách</span>
										</a></li>
									</ul></li>
									
								<li class="navbar-vertical-aside-has-menu "><a
									class="js-navbar-vertical-aside-menu-link nav-link nav-link-toggle"
									href="javascript:;" title="E-commerce"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Đơn hàng</span>
								</a>

									<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
										<li class="nav-item"><a class="nav-link "
											href="${urlDonHang }" title="Overview"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Danh sách</span>
										</a></li>

										

										<li class="nav-item"><a class="nav-link "
											href="${urlChiTietDonHang }" title="Manage Reviews">
												<span class="tio-circle-outlined nav-indicator-icon"></span>
												<span class="text-truncate">Chi tiết</span>
										</a></li>
										<li class="nav-item"><a class="nav-link "
											href="ecommerce-checkout.html" title="Checkout"> <span
												class="tio-circle-outlined nav-indicator-icon"></span> <span
												class="text-truncate">Tình trạng</span>
										</a></li>
									</ul></li>
							</ul></li>
						<!-- End Pages -->

						<!-- Apps -->
						<li class="navbar-vertical-aside-has-menu nav-item"><a
							class="js-navbar-vertical-aside-menu-link nav-link "
							href="javascript:;" title="Apps"> <i
								class="tio-apps nav-icon"></i> <span
								class="nav-compact-title text-truncate">Ứng dụng</span>
						</a>

							<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
								<li class="nav-item"><a class="nav-link "
									href="apps-kanban.html" title="Kanban"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Kanban</span>
								</a></li>
								<li class="nav-item"><a class="nav-link "
									href="apps-calendar.html" title="Calendar"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Calendar <span
											class="badge badge-info badge-pill ml-1">New</span></span>
								</a></li>
								<li class="nav-item"><a class="nav-link "
									href="apps-invoice-generator.html" title="Invoice Generator">
										<span class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Invoice Generator</span>
								</a></li>
								<li class="nav-item"><a class="nav-link "
									href="apps-file-manager.html" title="File Manager"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">File Manager</span>
								</a></li>
							</ul></li>
						<!-- End Apps -->

						<!-- Authentication -->
						<li class="navbar-vertical-aside-has-menu nav-item"><a
							class="js-navbar-vertical-aside-menu-link nav-link "
							href="javascript:;" title="Authentication"> <i
								class="tio-lock-outlined nav-icon"></i> <span
								class="nav-compact-title text-truncate">Đăng nhập</span>
						</a>
							<ul class="js-navbar-vertical-aside-submenu nav nav-sub">
								<li class="nav-item"><a class="nav-link"
									href="javascript:;" data-toggle="modal"
									data-target="#welcomeMessageModal" title="Welcome Message">
										<span class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Đăng nhập</span>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									href="javascript:;" data-toggle="modal"
									data-target="#welcomeMessageModal" title="Welcome Message">
										<span class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Đăng xuất</span>
								</a></li>

								<li class="nav-item"><a class="nav-link "
									href="error-404.html" title="Error 404"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Error 404</span>
								</a></li>

								<li class="nav-item"><a class="nav-link "
									href="error-500.html" title="Error 500"> <span
										class="tio-circle nav-indicator-icon"></span> <span
										class="text-truncate">Error 500</span>
								</a></li>
							</ul></li>
						<!-- End Authentication -->
					</ul>
				</div>
				<!-- End Content -->
			</div>
		</aside>
	</div>
</body>
</html>