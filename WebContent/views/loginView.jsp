<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
  <title>Risk Assessment Admin</title>

  <meta name="viewport"
    content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
  <link rel="icon" type="image/png" href="views/assets/image/logo.png" />

  <!-- Import lib -->
  <link rel="stylesheet" type="text/css" href="views/assets/fontawesome-free/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
  <!-- End import lib -->

  <link rel="stylesheet" type="text/css" href="views/assets/css/style.css">
  <link rel="stylesheet" type="text/css" href="views/assets/css/login.css">        
</head>

<body>
  <div id="particles-js"></div>
  <div id="login-wrapper">
    <img id="logo" src="views/assets/image/logo_side-2_line-black.png" alt="logo">
    <p id="login-title">Đăng nhập</p>
    <form id="login-form" action="${pageContext.request.contextPath}/login" method="POST" autocomplete="off">
      <input type="text" placeholder="Tên đăng nhập" name="username" required>
      <input type="password" placeholder="Mật khẩu" name="password" required>
      <p id="error-message">${errorMessage}</p>
<%--       <p style="color: red; text-align: center;">${errorMessage}</p> --%>
      <button type="submit">Đăng nhập</button>
    </form>
  </div>

  <!-- import script -->
  <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
  <script src="views/assets/js/login.js"></script>
  <!-- end script -->

</body>