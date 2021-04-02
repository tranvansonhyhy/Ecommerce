<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Basic Sign In | Front - Admin &amp; Dashboard Template</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="<c:url value="/images/favicon.ico"/>">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="<c:url value="/resources/admin/css/vendor.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/admin/vendor/icon-set/style.css"/>">

    <!-- CSS Front Template -->
    <link rel="stylesheet" href="<c:url value="/resources/admin/css/theme.min.css?v=1.0"/>">
  </head>

    <body>
      <!-- ========== MAIN CONTENT ========== -->
      <main id="content" role="main" class="main">
        <div class="position-fixed top-0 right-0 left-0 bg-img-hero" style="height: 32rem; background-image: url(<c:url value="/resources/admin/svg/components/abstract-bg-4.svg"/>);">
          <!-- SVG Bottom Shape -->
          <figure class="position-absolute right-0 bottom-0 left-0">
            <svg preserveaspectratio="none" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewbox="0 0 1921 273">
              <polygon fill="#fff" points="0,273 1921,273 1921,0 "></polygon>
            </svg>
          </figure>
          <!-- End SVG Bottom Shape -->
        </div>

        <!-- Content -->
        <div class="container py-5 py-sm-7">
          <a class="d-flex justify-content-center mb-5" href="index.html">
            <img class="z-index-2" src="<c:url value="/resources/admin/svg/logos/logo.svg"/>" alt="Image Description" style="width: 8rem;">
          </a>

          <div class="row justify-content-center">
            <div class="col-md-7 col-lg-5">
              <!-- Card -->
              <div class="card card-lg mb-5">
                <div class="card-body">
                  <!-- Form -->
                  <s:form class="js-validate" action="xuLyDangNhap" method="post">
                    <div class="text-center">
                      <div class="mb-5">
                        <h1 class="display-4">Sign in</h1>
                      </div>

                      <span class="divider text-muted mb-4" style="font-size: 30px">☟</span>
                    </div>

                    <!-- Form Group -->
                    <div class="js-form-message form-group">
                      <label class="input-label" for="signinSrEmail">Tài khoản</label>

                      <input type="text" class="form-control form-control-lg" name="tenDangNhap" id="signinSrEmail" tabindex="1" placeholder="Tài khoản hoặc email" aria-label="email@address.com" required="" data-msg="Vui lòng nhập tài khoản.">
                    </div>
                    <!-- End Form Group -->

                    <!-- Form Group -->
                    <div class="js-form-message form-group">
                      <label class="input-label" for="signupSrPassword" tabindex="0">
                        <span class="d-flex justify-content-between align-items-center">
                          Mật khẩu
                          <a class="input-label-secondary" href="authentication-reset-password-basic.html">Quên mật khẩu?</a>
                        </span>
                      </label>

                      <div class="input-group input-group-merge">
                        <input type="password" class="js-toggle-password form-control form-control-lg" name="matKhau" id="signupSrPassword" placeholder="Mật khẩu" aria-label="8+ characters required" required="" data-msg="Vui lòng nhập mật khẩu." data-hs-toggle-password-options='{
                                 "target": "#changePassTarget",
                                 "defaultClass": "tio-hidden-outlined",
                                 "showClass": "tio-visible-outlined",
                                 "classChangeTarget": "#changePassIcon"
                               }'>
                        <div id="changePassTarget" class="input-group-append">
                          <a class="input-group-text" href="javascript:;">
                            <i id="changePassIcon" class="tio-visible-outlined"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                    <!-- End Form Group -->

                    <!-- Checkbox -->
                    <div class="form-group">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="termsCheckbox" name="termsCheckbox">
                        <label class="custom-control-label text-muted" for="termsCheckbox"> Lưu đăng nhập</label>
                      </div>
                    </div>
                    <div class="js-form-message form-group">
                      <h6 style="color:red;">${thongBao}</h6>
                    </div>
                    <!-- End Checkbox -->

                    <button type="submit" class="btn btn-lg btn-block btn-primary">Đăng nhập</button>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                    <span style="color: red;">a</span>
                  </s:form>
                  <!-- End Form -->
                </div>
              </div>
              <!-- End Card -->

              <!-- Footer -->
              <div class="text-center">
                <small class="text-cap mb-4">Trusted by the world's best teams</small>

                <div class="w-85 mx-auto">
                  <div class="row justify-content-between">
                    <div class="col">
                      <img class="img-fluid" src="<c:url value="/resources/admin/svg/brands/gitlab-gray.svg"/>" alt="Image Description">
                    </div>
                    <div class="col">
                      <img class="img-fluid" src="<c:url value="/resources/admin/svg/brands/fitbit-gray.svg"/>" alt="Image Description">
                    </div>
                    <div class="col">
                      <img class="img-fluid" src="<c:url value="/resources/admin/svg/brands/flow-xo-gray.svg"/>" alt="Image Description">
                    </div>
                    <div class="col">
                      <img class="img-fluid" src="<c:url value="/resources/admin/svg/brands/layar-gray.svg"/>" alt="Image Description">
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Footer -->
            </div>
          </div>
        </div>
        <!-- End Content -->
      </main>
      <!-- ========== END MAIN CONTENT ========== -->


      <!-- JS Implementing Plugins -->
      <script src="<c:url value="/resources/admin/js/vendor.min.js"/>"></script>

      <!-- JS Front -->
      <script src="<c:url value="/resources/admin/js/theme.min.js"/>"></script>

      <!-- JS Plugins Init. -->
      <script>
        $(document).on('ready', function () {
          // INITIALIZATION OF SHOW PASSWORD
          // =======================================================
          $('.js-toggle-password').each(function () {
            new HSTogglePassword(this).init()
          });


          // INITIALIZATION OF FORM VALIDATION
          // =======================================================
          $('.js-validate').each(function() {
            $.HSCore.components.HSValidation.init($(this));
          });
        });
      </script>

      <!-- IE Support -->
      <script>
        if (/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) document.write('<script src="./resources/admin/vendor/babel-polyfill/polyfill.min.js"><\/script>');
      </script>
    </body>
</html>