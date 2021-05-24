<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <title>Risk Assessment Admin</title>
    <meta charset="UTF-8">
    <meta name="viewport"
      content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="icon" type="image/png" href="views/assets/image/logo.png" />
<!--     <link rel="icon" type="image/png" href="assets/image/logo.png" /> -->
<!-- Nếu xem bình thường bằng link jsp thì ok, nhưng xem thông qua servlet thì bị lỗi -->
    <!-- Import lib -->
    <link rel="stylesheet" type="text/css" href="views/assets/fontawesome-free/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <!-- End import lib -->

    <link rel="stylesheet" type="text/css" href="views/assets/css/style.css">
    <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script>
    <script src="views/assets/js/script.js"></script>
  </head>

  <body class="overlay-scrollbar sidebar-expand">
    <header>
      <!-- navbar -->
      <div class="navbar">
        <!-- nav left -->
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link">
              <i class="fas fa-bars" onclick="collapseSidebar()"></i>
            </a>
          </li>
          <li class="nav-item">
            <img src="views/assets/image/logo_side-1_line-black.png" alt="logo" class="logo logo-light">
            <img src="views/assets/image/logo_side-1_line-white.png" alt="logo" class="logo logo-dark">
          </li>
        </ul>
        <!-- end nav left -->

        <!-- nav right -->
        <ul class="navbar-nav nav-right">
          <li class="nav-item mode">
            <a class="nav-link" href="#" onclick="switchTheme()">
              <i class="fas fa-moon dark-icon"></i>
              <i class="fas fa-sun light-icon"></i>
            </a>
          </li>
          <!-- <li class="nav-item name-wrapper">
            Xin chào Phạm Trung Hiếu
          </li> -->
          <li class="nav-item avt-wrapper">
            <div class="avt dropdown">
              <img src="views/assets/image/admin_avatar.png" alt="admin avatar" class="dropdown-toggle"
                data-toggle="user-menu">
              <ul id="user-menu" class="dropdown-menu">
                <li class="dropdown-menu-item">
                  <a class="dropdown-menu-link" href="${pageContext.request.contextPath}/userInfo">
                    <div>
                      <i class="fas fa-user-tie"></i>
                    </div>
                    <span>Thông tin tài khoản</span>
                  </a>
                </li>
                <li class="dropdown-menu-item">
                  <a href="#" class="dropdown-menu-link" href="${pageContext.request.contextPath}/setting">
                    <div>
                      <i class="fas fa-cog"></i>
                    </div>
                    <span>Cài đặt</span>
                  </a>
                </li>
                <li class="dropdown-menu-item">
                  <a href="${pageContext.request.contextPath}/logout" class="dropdown-menu-link">
                    <div>
                      <i class="fas fa-sign-out-alt"></i>
                    </div>
                    <span>Đăng xuất</span>
                  </a>
                </li>
              </ul>
            </div>
          </li>
        </ul>
        <!-- end nav right -->
      </div>
      <!-- end navbar -->
    </header>