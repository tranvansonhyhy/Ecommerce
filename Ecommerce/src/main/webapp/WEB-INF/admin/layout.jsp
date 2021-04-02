<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- Khai báo thư viện sử dụng tiles để thiết kế giao diện-->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required Meta Tags Always Come First -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Title -->
  <title>Products - E-commerce | Front - Admin &amp; Dashboard Template</title>

  <!-- Favicon -->
  <link rel="shortcut icon" href="<c:url value="/images/favicon.ico"/>">

  <!-- Font -->
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">


  <!-- CSS Implementing Plugins -->
  <link rel="stylesheet" href="<c:url value="/resources/admin/css/vendor.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/admin/vendor/icon-set/style.css"/>">
  <script src="<c:url value="/resources/admin/js/jquery-3.4.1.min.js"/>"></script>

  <!-- CSS Front Template -->
  <link rel="stylesheet" href="<c:url value="/resources/admin/css/theme.min.css?v=1.0"/>">
  <style type="text/css">
	.error{
		color: red;
	}
  </style>
</head>

<body class="   footer-offset">

  <script src="<c:url value="/resources/admin/vendor/hs-navbar-vertical-aside/hs-navbar-vertical-aside-mini-cache.js"/>"></script>


  <!-- ONLY DEV -->

  <!-- Builder -->
  <div id="styleSwitcherDropdown" class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow"
    style="width: 35rem;">
    <div class="card card-lg border-0 h-100">
      <div class="card-header align-items-start">
        <div class="mr-2">
          <h3 class="card-header-title">Front Builder</h3>
          <p>Customize your overview page layout. Choose the one that best fits your needs.</p>
        </div>

        <!-- Toggle Button -->
        <a class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-dark" href="javascript:;" data-hs-unfold-options='{
                  "target": "#styleSwitcherDropdown",
                  "type": "css-animation",
                  "animationIn": "fadeInRight",
                  "animationOut": "fadeOutRight",
                  "hasOverlay": true,
                  "smartPositionOff": true
                 }'>
          <i class="tio-clear tio-lg"></i>
        </a>
        <!-- End Toggle Button -->
      </div>

      <!-- Body -->
      <div class="card-body sidebar-scrollbar">
        <h4 class="mb-1">Layout skins <span id="js-builder-disabled" class="badge badge-soft-danger"
            style="opacity: 0">Disabled</span></h4>
        <p>3 kinds of layout skins to choose from.</p>

        <div class="row gx-2 mb-5">
          <!-- Custom Radio -->
          <div class="col-4 text-center">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="layoutSkinsRadio" id="layoutSkinsRadio1"
                  checked="" value="default">
                <label class="custom-checkbox-card-label" for="layoutSkinsRadio1">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/layouts-sidebar-default.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Default</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->

          <!-- Custom Radio -->
          <div class="col-4 text-center">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="layoutSkinsRadio" id="layoutSkinsRadio2"
                  value="navbar-dark">
                <label class="custom-checkbox-card-label" for="layoutSkinsRadio2">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/layouts-sidebar-dark.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Dark</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->

          <!-- Custom Radio -->
          <div class="col-4 text-center">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="layoutSkinsRadio" id="layoutSkinsRadio3"
                  value="navbar-light">
                <label class="custom-checkbox-card-label" for="layoutSkinsRadio3">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/layouts-sidebar-light.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Light</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->
        </div>
        <!-- End Row -->

        <h4 class="mb-1">Sidebar layout options</h4>
        <p>Choose between standard navigation sizing, mini or even compact with icons.</p>

        <div class="row gx-2 mb-5">
          <!-- Custom Radio -->
          <div class="col-4 text-center">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="sidebarLayoutOptions"
                  id="sidebarLayoutOptions1" checked="" value="default">
                <label class="custom-checkbox-card-label" for="sidebarLayoutOptions1">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/sidebar-default-classic.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Default</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->

          <!-- Custom Radio -->
          <div class="col-4 text-center">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="sidebarLayoutOptions"
                  id="sidebarLayoutOptions2" value="navbar-vertical-aside-compact-mode">
                <label class="custom-checkbox-card-label" for="sidebarLayoutOptions2">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/sidebar-compact.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Compact</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->

          <!-- Custom Radio -->
          <div class="col-4 text-center">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="sidebarLayoutOptions"
                  id="sidebarLayoutOptions3" value="navbar-vertical-aside-mini-mode">
                <label class="custom-checkbox-card-label" for="sidebarLayoutOptions3">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/sidebar-mini.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Mini</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->
        </div>
        <!-- End Row -->

        <h4 class="mb-1">Header layout options</h4>
        <p>Choose the primary navigation of your header layout.</p>

        <div class="row gx-2">
          <!-- Custom Radio -->
          <div class="col-4 text-center">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions"
                  id="headerLayoutOptions1" value="single">
                <label class="custom-checkbox-card-label" for="headerLayoutOptions1">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/header-default-fluid.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Default (Fluid)</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->

          <!-- Custom Radio -->
          <div class="col-4 text-center">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions"
                  id="headerLayoutOptions2" value="single-container">
                <label class="custom-checkbox-card-label" for="headerLayoutOptions2">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/header-default-container.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Default (Container)</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->

          <!-- Custom Radio -->
          <div class="col-4 text-center">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions"
                  id="headerLayoutOptions3" value="double">
                <label class="custom-checkbox-card-label" for="headerLayoutOptions3">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/header-double-line-fluid.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Double line (Fluid)</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->

          <!-- Custom Radio -->
          <div class="col-4 text-center mt-2">
            <div class="text-center">
              <div class="custom-checkbox-card mb-2">
                <input type="radio" class="custom-checkbox-card-input" name="headerLayoutOptions"
                  id="headerLayoutOptions4" value="double-container">
                <label class="custom-checkbox-card-label" for="headerLayoutOptions4">
                  <img class="custom-checkbox-card-img" src="<c:url value="/resources/admin/svg/layouts/header-double-line-container.svg"/>"
                    alt="Image Description">
                </label>
                <span class="custom-checkbox-card-text">Double line (Container)</span>
              </div>
            </div>
          </div>
          <!-- End Custom Radio -->
        </div>
        <!-- End Row -->
      </div>
      <!-- End Body -->

      <!-- Footer -->
      <div class="card-footer">
        <div class="row gx-2">
          <div class="col">
            <button type="button" id="js-builder-reset" class="btn btn-block btn-lg btn-white">
              <i class="tio-restore"></i> Reset
            </button>
          </div>
          <div class="col">
            <button type="button" id="js-builder-preview" class="btn btn-block btn-lg btn-primary">
              <i class="tio-visible"></i> Preview
            </button>
          </div>
        </div>
        <!-- End Row -->
      </div>
      <!-- End Footer -->
    </div>
  </div>
  <!-- End Builder -->

  <!-- Builder Toggle -->
  <div class="d-none d-md-block position-fixed bottom-0 right-0 mr-5 mb-10" style="z-index: 3;">
    <div
      style="position: fixed; top: 50%; right: 0; margin-right: -.25rem; transform: translateY(-50%); writing-mode: vertical-rl; text-orientation: sideways;">
      <div class="hs-unfold">
        <a id="builderPopover" class="js-hs-unfold-invoker btn btn-sm btn-soft-dark py-3" href="javascript:;"
          data-template='<div class="d-none d-md-block popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'
          data-toggle="popover" data-placement="left"
          title="<div class='d-flex align-items-center'>Front Builder <a href='#!' class='close close-light ml-auto'><i id='closeBuilderPopover' class='tio-clear'></i></a></div>"
          data-content="Customize your overview page layout. Choose the one that best fits your needs." data-html="true"
          data-hs-unfold-options='{
                "target": "#styleSwitcherDropdown",
                "type": "css-animation",
                "animationIn": "fadeInRight",
                "animationOut": "fadeOutRight",
                "hasOverlay": true,
                "smartPositionOff": true
               }'>
          <i class="tio-tune mr-2"></i>
          <span class="font-weight-bold text-uppercase">Builder</span>
        </a>
      </div>
    </div>
  </div>
  <!-- End Builder Toggle -->

  <!-- JS Preview mode only -->



  <!--Start Heade-->
  <tiles:insertAttribute name="header" />
  <!--End Heade-->


  
  <!--Start Sidebar-->
  <tiles:insertAttribute name="sidebar" />
  <!--End Sidebar-->




  <script src="<c:url value="/resources/admin/js/demo.js"/>"></script>

  <!-- END ONLY DEV -->

  <!-- Search Form -->
  <div id="searchDropdown" class="hs-unfold-content dropdown-unfold search-fullwidth d-md-none">
    <form class="input-group input-group-merge input-group-borderless">
      <div class="input-group-prepend">
        <div class="input-group-text">
          <i class="tio-search"></i>
        </div>
      </div>

      <input class="form-control rounded-0" type="search" placeholder="Search in front" aria-label="Search in front">

      <div class="input-group-append">
        <div class="input-group-text">
          <div class="hs-unfold">
            <a class="js-hs-unfold-invoker" href="javascript:;" data-hs-unfold-options='{
                   "target": "#searchDropdown",
                   "type": "css-animation",
                   "animationIn": "fadeIn",
                   "hasOverlay": "rgba(46, 52, 81, 0.1)",
                   "closeBreakpoint": "md"
                 }'>
              <i class="tio-clear tio-lg"></i>
            </a>
          </div>
        </div>
      </div>
    </form>
  </div>
  <!-- End Search Form -->

  <!-- ========== HEADER ========== -->





  <!-- ========== END HEADER ========== -->

  <!-- ========== MAIN CONTENT ========== -->
  <!-- Navbar Vertical -->



  <!-- End Navbar Vertical -->

  <main id="content" role="main" class="main">
    
    
    <!-- Content -->
    <tiles:insertAttribute name="body" />
    <!-- End Content -->



    <!-- Footer -->
	<tiles:insertAttribute name="footer" />
    <!--End Footer-->



    <!-- End Footer -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->

  <!-- ========== SECONDARY CONTENTS ========== -->


  <!-- Keyboard Shortcuts -->
  <div id="keyboardShortcutsSidebar" class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow">
    <div class="card card-lg sidebar-card">
      <div class="card-header">
        <h4 class="card-header-title">Keyboard shortcuts</h4>

        <!-- Toggle Button -->
        <a class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-dark ml-2" href="javascript:;"
          data-hs-unfold-options='{
                "target": "#keyboardShortcutsSidebar",
                "type": "css-animation",
                "animationIn": "fadeInRight",
                "animationOut": "fadeOutRight",
                "hasOverlay": true,
                "smartPositionOff": true
               }'>
          <i class="tio-clear tio-lg"></i>
        </a>
        <!-- End Toggle Button -->
      </div>

      <!-- Body -->
      <div class="card-body sidebar-body sidebar-scrollbar">
        <div class="list-group list-group-sm list-group-flush list-group-no-gutters mb-5">
          <div class="list-group-item">
            <h5 class="mb-1">Formatting</h5>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span class="font-weight-bold">Bold</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">b</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <em>italic</em>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">i</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <u>Underline</u>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">u</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <s>Strikethrough</s>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Alt</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">s</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span class="small">Small text</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">s</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <mark>Highlight</mark>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">e</kbd>
              </div>
            </div>
          </div>
        </div>

        <div class="list-group list-group-sm list-group-flush list-group-no-gutters mb-5">
          <div class="list-group-item">
            <h5 class="mb-1">Insert</h5>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Mention person <a href="#">(@Brian)</a></span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">@</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Link to doc <a href="#">(+Meeting notes)</a></span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">+</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <a href="#">#hashtag</a>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">#hashtag</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Date</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">/date</kbd>
                <kbd class="d-inline-block mb-1">Space</kbd>
                <kbd class="d-inline-block mb-1">/datetime</kbd>
                <kbd class="d-inline-block mb-1">/datetime</kbd>
                <kbd class="d-inline-block mb-1">Space</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Time</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">/time</kbd>
                <kbd class="d-inline-block mb-1">Space</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Note box</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">/note</kbd>
                <kbd class="d-inline-block mb-1">Enter</kbd>
                <kbd class="d-inline-block mb-1">/note red</kbd>
                <kbd class="d-inline-block mb-1">/note red</kbd>
                <kbd class="d-inline-block mb-1">Enter</kbd>
              </div>
            </div>
          </div>
        </div>

        <div class="list-group list-group-sm list-group-flush list-group-no-gutters mb-5">
          <div class="list-group-item">
            <h5 class="mb-1">Editing</h5>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Find and replace</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">r</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Find next</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">n</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Find previous</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">p</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Indent</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Tab</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Un-indent</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Tab</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Move line up</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1"><i class="tio-arrow-large-upward-outlined"></i></kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Move line down</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1"><i class="tio-arrow-large-downward-outlined font-size-sm"></i></kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Add a comment</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Alt</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">m</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Undo</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">z</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Redo</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">y</kbd>
              </div>
            </div>
          </div>
        </div>

        <div class="list-group list-group-sm list-group-flush list-group-no-gutters">
          <div class="list-group-item">
            <h5 class="mb-1">Application</h5>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Create new doc</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Alt</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">n</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Present</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">p</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Share</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">s</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Search docs</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">o</kbd>
              </div>
            </div>
          </div>
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-5">
                <span>Keyboard shortcuts</span>
              </div>
              <div class="col-7 text-right">
                <kbd class="d-inline-block mb-1">Ctrl</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">Shift</kbd> <small class="text-muted">+</small> <kbd
                  class="d-inline-block mb-1">/</kbd>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Body -->
    </div>
  </div>
  <!-- End Keyboard Shortcuts -->




  <!-- Activity -->
  <div id="activitySidebar" class="hs-unfold-content sidebar sidebar-bordered sidebar-box-shadow">
    <div class="card card-lg sidebar-card">
      <div class="card-header">
        <h4 class="card-header-title">Activity stream</h4>

        <!-- Toggle Button -->
        <a class="js-hs-unfold-invoker btn btn-icon btn-xs btn-ghost-dark ml-2" href="javascript:;"
          data-hs-unfold-options='{
              "target": "#activitySidebar",
              "type": "css-animation",
              "animationIn": "fadeInRight",
              "animationOut": "fadeOutRight",
              "hasOverlay": true,
              "smartPositionOff": true
             }'>
          <i class="tio-clear tio-lg"></i>
        </a>
        <!-- End Toggle Button -->
      </div>

      <!-- Body -->
      <div class="card-body sidebar-body sidebar-scrollbar">
        <!-- Step -->
        <ul class="step step-icon-sm step-avatar-sm">
          <!-- Step Item -->
          <li class="step-item">
            <div class="step-content-wrapper">
              <div class="step-avatar">
                <img class="step-avatar-img" src="<c:url value="/images/160x160/img9.jpg"/>" alt="Image Description">
              </div>

              <div class="step-content">
                <h5 class="mb-1">Iana Robinson</h5>

                <p class="font-size-sm mb-1">Added 2 files to task <a class="text-uppercase" href="#"><i
                      class="tio-folder-bookmarked"></i> Fd-7</a></p>

                <ul class="list-group list-group-sm">
                  <!-- List Item -->
                  <li class="list-group-item list-group-item-light">
                    <div class="row gx-1">
                      <div class="col-6">
                        <div class="media">
                          <span class="mt-1 mr-2">
                            <img class="avatar avatar-xs" src="<c:url value="/resources/admin/svg/brands/excel.svg"/>" alt="Image Description">
                          </span>
                          <div class="media-body text-truncate">
                            <span class="d-block font-size-sm text-dark text-truncate"
                              title="weekly-reports.xls">weekly-reports.xls</span>
                            <small class="d-block text-muted">12kb</small>
                          </div>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="media">
                          <span class="mt-1 mr-2">
                            <img class="avatar avatar-xs" src="<c:url value="/resources/admin/svg/brands/word.svg"/>" alt="Image Description">
                          </span>
                          <div class="media-body text-truncate">
                            <span class="d-block font-size-sm text-dark text-truncate"
                              title="weekly-reports.xls">weekly-reports.xls</span>
                            <small class="d-block text-muted">4kb</small>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <!-- End List Item -->
                </ul>

                <small class="text-muted text-uppercase">Now</small>
              </div>
            </div>
          </li>
          <!-- End Step Item -->

          <!-- Step Item -->
          <li class="step-item">
            <div class="step-content-wrapper">
              <span class="step-icon step-icon-soft-dark">B</span>

              <div class="step-content">
                <h5 class="mb-1">Bob Dean</h5>

                <p class="font-size-sm mb-1">Marked <a class="text-uppercase" href="#"><i
                      class="tio-folder-bookmarked"></i> Fr-6</a> as <span
                    class="badge badge-soft-success badge-pill"><span
                      class="legend-indicator bg-success"></span>"Completed"</span></p>

                <small class="text-muted text-uppercase">Today</small>
              </div>
            </div>
          </li>
          <!-- End Step Item -->

          <!-- Step Item -->
          <li class="step-item">
            <div class="step-content-wrapper">
              <div class="step-avatar">
                <img class="step-avatar-img" src="<c:url value="/images/160x160/img3.jpg"/>" alt="Image Description">
              </div>

              <div class="step-content">
                <h5 class="h5 mb-1">Crane</h5>

                <p class="font-size-sm mb-1">Added 5 card to <a href="#">Payments</a></p>

                <ul class="list-group list-group-sm">
                  <li class="list-group-item list-group-item-light">
                    <div class="row gx-1">
                      <div class="col">
                        <img class="img-fluid rounded ie-sidebar-activity-img" src="<c:url value="/resources/admin/svg/illustrations/card-1.svg"/>"
                          alt="Image Description">
                      </div>
                      <div class="col">
                        <img class="img-fluid rounded ie-sidebar-activity-img" src="<c:url value="/resources/admin/svg/illustrations/card-2.svg"/>"
                          alt="Image Description">
                      </div>
                      <div class="col">
                        <img class="img-fluid rounded ie-sidebar-activity-img" src="<c:url value="/resources/admin/svg/illustrations/card-3.svg"/>"
                          alt="Image Description">
                      </div>
                      <div class="col-auto align-self-center">
                        <div class="text-center">
                          <a href="#">+2</a>
                        </div>
                      </div>
                    </div>
                  </li>
                </ul>

                <small class="text-muted text-uppercase">May 12</small>
              </div>
            </div>
          </li>
          <!-- End Step Item -->

          <!-- Step Item -->
          <li class="step-item">
            <div class="step-content-wrapper">
              <span class="step-icon step-icon-soft-info">D</span>

              <div class="step-content">
                <h5 class="mb-1">David Lidell</h5>

                <p class="font-size-sm mb-1">Added a new member to Front Dashboard</p>

                <small class="text-muted text-uppercase">May 15</small>
              </div>
            </div>
          </li>
          <!-- End Step Item -->

          <!-- Step Item -->
          <li class="step-item">
            <div class="step-content-wrapper">
              <div class="step-avatar">
                <img class="step-avatar-img" src="<c:url value="/images/160x160/img7.jpg"/>" alt="Image Description">
              </div>

              <div class="step-content">
                <h5 class="mb-1">Rachel King</h5>

                <p class="font-size-sm mb-1">Marked <a class="text-uppercase" href="#"><i
                      class="tio-folder-bookmarked"></i> Fr-3</a> as <span
                    class="badge badge-soft-success badge-pill"><span
                      class="legend-indicator bg-success"></span>"Completed"</span></p>

                <small class="text-muted text-uppercase">Apr 29</small>
              </div>
            </div>
          </li>
          <!-- End Step Item -->

          <!-- Step Item -->
          <li class="step-item">
            <div class="step-content-wrapper">
              <div class="step-avatar">
                <img class="step-avatar-img" src="<c:url value="/images/160x160/img5.jpg"/>" alt="Image Description">
              </div>

              <div class="step-content">
                <h5 class="mb-1">Finch Hoot</h5>

                <p class="font-size-sm mb-1">Earned a "Top endorsed" <i class="tio-verified text-primary"></i> badge</p>

                <small class="text-muted text-uppercase">Apr 06</small>
              </div>
            </div>
          </li>
          <!-- End Step Item -->

          <!-- Step Item -->
          <li class="step-item">
            <div class="step-content-wrapper">
              <span class="step-icon step-icon-soft-primary">
                <i class="tio-user"></i>
              </span>

              <div class="step-content">
                <h5 class="mb-1">Project status updated</h5>

                <p class="font-size-sm mb-1">Marked <a class="text-uppercase" href="#"><i
                      class="tio-folder-bookmarked"></i> Fr-3</a> as <span
                    class="badge badge-soft-primary badge-pill"><span class="legend-indicator bg-primary"></span>"In
                    progress"</span></p>

                <small class="text-muted text-uppercase">Feb 10</small>
              </div>
            </div>
          </li>
          <!-- End Step Item -->
        </ul>
        <!-- End Step -->

        <a class="btn btn-block btn-white" href="javascript:;">View all <i class="tio-chevron-right"></i></a>
      </div>
      <!-- End Body -->
    </div>
  </div>
  <!-- End Activity -->




  <!-- Welcome Message Modal -->
  <div class="modal fade" id="welcomeMessageModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <!-- Header -->
        <div class="modal-close">
          <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary" data-dismiss="modal" aria-label="Close">
            <i class="tio-clear tio-lg"></i>
          </button>
        </div>
        <!-- End Header -->

        <!-- Body -->
        <div class="modal-body p-sm-5">
          <div class="text-center">
            <div class="w-75 w-sm-50 mx-auto mb-4">
              <img class="img-fluid" src="<c:url value="/resources/admin/svg/illustrations/graphs.svg"/>" alt="Image Description">
            </div>

            <h4 class="h1">Welcome to Front</h4>

            <p>We're happy to see you in our community.</p>
          </div>
        </div>
        <!-- End Body -->

        <!-- Footer -->
        <div class="modal-footer d-block text-center py-sm-5">
          <small class="text-cap mb-4">Trusted by the world's best teams</small>

          <div class="w-85 mx-auto">
            <div class="row justify-content-between">
              <div class="col">
                <img class="img-fluid ie-welcome-brands" src="<c:url value="/resources/admin/svg/brands/gitlab-gray.svg"/>"
                  alt="Image Description">
              </div>
              <div class="col">
                <img class="img-fluid ie-welcome-brands" src="<c:url value="/resources/admin/svg/brands/fitbit-gray.svg"/>"
                  alt="Image Description">
              </div>
              <div class="col">
                <img class="img-fluid ie-welcome-brands" src="<c:url value="/resources/admin/svg/brands/flow-xo-gray.svg"/>"
                  alt="Image Description">
              </div>
              <div class="col">
                <img class="img-fluid ie-welcome-brands" src="<c:url value="/resources/admin/svg/brands/layar-gray.svg"/>" alt="Image Description">
              </div>
            </div>
          </div>
        </div>
        <!-- End Footer -->
      </div>
    </div>
  </div>
  <!-- End Welcome Message Modal -->





  <!-- Export Products Modal -->
  <div class="modal fade" id="exportProductsModal" tabindex="-1" role="dialog"
    aria-labelledby="exportProductsModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <!-- Header -->
        <div class="modal-header">
          <h4 id="exportProductsModalTitle" class="modal-title">Export products</h4>

          <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary" data-dismiss="modal" aria-label="Close">
            <i class="tio-clear tio-lg"></i>
          </button>
        </div>
        <!-- End Header -->

        <!-- Body -->
        <div class="modal-body">
          <p>This CSV file can update all product information. To update just inventory quantites use the <a
              href="#">CSV file for inventory.</a></p>

          <!-- Form Group -->
          <div class="form-group">
            <label class="input-label">Export</label>

            <!-- Custom Checkbox -->
            <div class="custom-control custom-radio mb-2">
              <input type="radio" id="exportProductsRadio1" name="exportProductsRadio" class="custom-control-input"
                checked="">
              <label class="custom-control-label" for="exportProductsRadio1">Current page</label>
            </div>
            <div class="custom-control custom-radio mb-2">
              <input type="radio" id="exportProductsRadio2" name="exportProductsRadio" class="custom-control-input">
              <label class="custom-control-label" for="exportProductsRadio2">All products</label>
            </div>
            <div class="custom-control custom-radio">
              <input type="radio" id="exportProductsRadio3" name="exportProductsRadio" class="custom-control-input"
                disabled="">
              <label class="custom-control-label" for="exportProductsRadio3">Selected: 20 products</label>
            </div>
            <!-- End Custom Checkbox -->
          </div>
          <!-- End Form Group -->

          <label class="input-label">Export as</label>

          <!-- Custom Checkbox -->
          <div class="custom-control custom-radio mb-2">
            <input type="radio" id="exportProductsAsRadio1" name="exportProductsAsRadio" class="custom-control-input"
              checked="">
            <label class="custom-control-label" for="exportProductsAsRadio1">CSV for Excel, Numbers, or other
              spreadsheet programs</label>
          </div>
          <div class="custom-control custom-radio">
            <input type="radio" id="exportProductsAsRadio2" name="exportProductsAsRadio" class="custom-control-input">
            <label class="custom-control-label" for="exportProductsAsRadio2">Plain CSV file</label>
          </div>
          <!-- End Custom Checkbox -->
        </div>
        <!-- End Body -->

        <!-- Footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-white mr-2" data-dismiss="modal" aria-label="Close">Cancel</button>
          <button type="button" class="btn btn-primary">Export products</button>
        </div>
        <!-- End Footer -->
      </div>
    </div>
  </div>
  <!-- End Export Products Modal -->




  <!-- Import Products Modal -->
  <div class="modal fade" id="importProductsModal" tabindex="-1" role="dialog"
    aria-labelledby="importProductsModalTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <!-- Header -->
        <div class="modal-header">
          <h4 id="importProductsModalTitle" class="modal-title">Import products by CSV</h4>

          <button type="button" class="btn btn-icon btn-sm btn-ghost-secondary" data-dismiss="modal" aria-label="Close">
            <i class="tio-clear tio-lg"></i>
          </button>
        </div>
        <!-- End Header -->

        <!-- Body -->
        <div class="modal-body">
          <p><a href="#">Download a sample CSV template</a> to see an example of the format required.</p>

          <!-- Form Group -->
          <div class="form-group">
            <!-- Dropzone -->
            <div id="attachFilesNewProjectLabel" class="js-dropzone dropzone-custom custom-file-boxed">
              <div class="dz-message custom-file-boxed-label">
                <img class="avatar avatar-xl avatar-4by3 mb-3" src="<c:url value="/resources/admin/svg/illustrations/browse.svg"/>"
                  alt="Image Description">
                <h5 class="mb-1">Choose files to upload</h5>
                <p class="mb-2">or</p>
                <span class="btn btn-sm btn-primary">Browse files</span>
              </div>
            </div>
            <!-- End Dropzone -->
          </div>
          <!-- End Form Group -->

          <!-- Custom Checkbox -->
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="overwriteCurrentProductsCheckbox">
            <label class="custom-control-label" for="overwriteCurrentProductsCheckbox">Overwrite any current products
              that have the same handle. Existing values will be used for any missing columns.<a href="#">Learn
                more</a></label>
          </div>
          <!-- End Custom Checkbox -->
        </div>
        <!-- End Body -->

        <!-- Footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-white mr-2" data-dismiss="modal" aria-label="Close">Cancel</button>
          <button type="button" class="btn btn-primary">Upload and continue</button>
        </div>
        <!-- End Footer -->
      </div>
    </div>
  </div>
  <!-- End Import Products Modal -->




  
  <!-- ========== END SECONDARY CONTENTS ========== -->





  <!-- JS Implementing Plugins -->
  <script src="<c:url value="/resources/admin/js/vendor.min.js"/>"></script>



  <!-- JS Front -->
  <script src="<c:url value="/resources/admin/js/theme.min.js"/>"></script>

  <!-- JS Plugins Init. -->
  <script>
    $(document).on('ready', function () {
      // ONLY DEV
      // =======================================================

      if (window.localStorage.getItem('hs-builder-popover') === null) {
        $('#builderPopover').popover('show')
          .on('shown.bs.popover', function () {
            $('.popover').last().addClass('popover-dark')
          });

        $(document).on('click', '#closeBuilderPopover', function () {
          window.localStorage.setItem('hs-builder-popover', true);
          $('#builderPopover').popover('dispose');
        });
      } else {
        $('#builderPopover').on('show.bs.popover', function () {
          return false
        });
      }

      // END ONLY DEV
      // =======================================================


      // BUILDER TOGGLE INVOKER
      // =======================================================
      $('.js-navbar-vertical-aside-toggle-invoker').click(function () {
        $('.js-navbar-vertical-aside-toggle-invoker i').tooltip('hide');
      });


      // INITIALIZATION OF MEGA MENU
      // =======================================================
      var megaMenu = new HSMegaMenu($('.js-mega-menu'), {
        desktop: {
          position: 'left'
        }
      }).init();



      // INITIALIZATION OF NAVBAR VERTICAL NAVIGATION
      // =======================================================
      var sidebar = $('.js-navbar-vertical-aside').hsSideNav();


      // INITIALIZATION OF TOOLTIP IN NAVBAR VERTICAL MENU
      // =======================================================
      $('.js-nav-tooltip-link').tooltip({ boundary: 'window' })

      $(".js-nav-tooltip-link").on("show.bs.tooltip", function (e) {
        if (!$("body").hasClass("navbar-vertical-aside-mini-mode")) {
          return false;
        }
      });


      // INITIALIZATION OF UNFOLD
      // =======================================================
      $('.js-hs-unfold-invoker').each(function () {
        var unfold = new HSUnfold($(this)).init();
      });


      // INITIALIZATION OF FORM SEARCH
      // =======================================================
      $('.js-form-search').each(function () {
        new HSFormSearch($(this)).init()
      });

   // INITIALIZATION OF SELECT2
      // =======================================================
      $('.js-select2-custom').each(function () {
        var select2 = $.HSCore.components.HSSelect2.init($(this));
      });

   // INITIALIZATION OF QUILLJS EDITOR
      // =======================================================
      var quill = $.HSCore.components.HSQuill.init('.js-quill');

   // INITIALIZATION OF ADD INPUT FILED
      // =======================================================
      $('.js-add-field').each(function () {
        new HSAddField($(this), {
          addedField: function() {
            $('.js-add-field .js-select2-custom-dynamic').each(function () {
              var select2dynamic = $.HSCore.components.HSSelect2.init($(this));
            });
          }
        }).init();
      });
   
      // INITIALIZATION OF NAV SCROLLER
      // =======================================================
      $('.js-nav-scroller').each(function () {
        new HsNavScroller($(this)).init()
      });
	
   // INITIALIZATION OF DROPZONE FILE ATTACH MODULE
      // =======================================================
      $('.js-dropzone').each(function () {
        var dropzone = $.HSCore.components.HSDropzone.init('#' + $(this).attr('id'));
      });

   // INITIALIZATION OF FILE ATTACH
      // =======================================================
      $('.js-file-attach').each(function () {
        var customFile = new HSFileAttach($(this)).init();
      });

      
      // INITIALIZATION OF STEP FORM
      // =======================================================
      $('.js-step-form').each(function () {
        var stepForm = new HSStepForm($(this), {
          finish: function() {
            $("#addUserStepFormProgress").hide();
            $("#addUserStepFormContent").hide();
            $("#successMessageContent").show();
          }
        }).init();
      });

   	  
      
      // INITIALIZATION OF MASKED INPUT
      // =======================================================
      $('.js-masked-input').each(function () {
        var mask = $.HSCore.components.HSMask.init($(this));
      });


      // INITIALIZATION OF DATATABLES
      // =======================================================
      var datatable = $.HSCore.components.HSDatatables.init($('#datatable'), {
        select: {
          style: 'multi',
          selector: 'td:first-child input[type="checkbox"]',
          classMap: {
            checkAll: '#datatableCheckAll',
            counter: '#datatableCounter',
            counterInfo: '#datatableCounterInfo'
          }
        },
        language: {
          zeroRecords: '<div class="text-center p-4">' +
            '<img class="mb-3" src="<c:url value ="/resources/admin/svg/illustrations/sorry.svg"/>" alt="Image Description" style="width: 7rem;">' +
            '<p class="mb-0">Không có dữ liệu</p>' +
            '</div>'
        }
      });

      $('.js-datatable-filter').on('change', function () {
        var $this = $(this),
          elVal = $this.val(),
          targetColumnIndex = $this.data('target-column-index');

        datatable.column(targetColumnIndex).search(elVal).draw();
      });

      $('#datatableSearch').on('mouseup', function (e) {
        var $input = $(this),
          oldValue = $input.val();

        if (oldValue == "") return;

        setTimeout(function () {
          var newValue = $input.val();

          if (newValue == "") {
            // Gotcha
            datatable.search('').draw();
          }
        }, 1);
      });

      $('#toggleColumn_product').change(function (e) {
        datatable.columns(1).visible(e.target.checked)
      })

      $('#toggleColumn_type').change(function (e) {
        datatable.columns(2).visible(e.target.checked)
      })


      $('#toggleColumn_vendor').change(function (e) {
        datatable.columns(3).visible(e.target.checked)
      })

      $('#toggleColumn_stocks').change(function (e) {
        datatable.columns(4).visible(e.target.checked)
      })

      $('#toggleColumn_sku').change(function (e) {
        datatable.columns(5).visible(e.target.checked)
      })

      $('#toggleColumn_price').change(function (e) {
        datatable.columns(6).visible(e.target.checked)
      })

      
      $('#toggleColumn_quantity').change(function (e) {
        datatable.columns(7).visible(e.target.checked)
      })

      $('#toggleColumn_variants').change(function (e) {
        datatable.columns(8).visible(e.target.checked)
      })
      
	  // INITIALIZATION OF FORM VALIDATION
          // =======================================================
      $('.js-validate').each(function() {
            $.HSCore.components.HSValidation.init($(this));
      });

      // INITIALIZATION OF TAGIFY
      // =======================================================
      $('.js-tagify').each(function () {
        var tagify = $.HSCore.components.HSTagify.init($(this));
      });
    });
  </script>

  <!-- IE Support -->
  <script>
    if (/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) document.write('<script src="<c:url value="/resources/admin/vendor/babel-polyfill/polyfill.min.js"/>"><\/script>');
  </script>
</body>

</html>