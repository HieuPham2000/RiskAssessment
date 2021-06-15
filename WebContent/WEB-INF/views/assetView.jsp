<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Risk Assessment Admin</title>
<meta charset="UTF-8">
<meta name="viewport"
  content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<link rel="icon" type="image/png" href="assets/image/logo.png" />

<!-- Import lib -->
<!-- <link rel="stylesheet" type="text/css" href="assets/fontawesome-free/css/all.min.css"> -->
<link
  href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
  rel="stylesheet">
<script src="https://kit.fontawesome.com/aa8e5675e3.js"
  crossorigin="anonymous"></script>
<!-- End import lib -->

<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link rel="stylesheet" type="text/css"
  href="assets/css/style_general.css">
</head>
<body class="overlay-scrollbar">
  <jsp:include page="_navbar.jsp"></jsp:include>
  <jsp:include page="_sidebar.jsp">
    <jsp:param value="true" name="report_active" />
  </jsp:include>

  <!-- main content -->
  <div class="wrapper">
    <p class="link_mark">Home > Quản lý tài sản</p>
    <div class="row justify-content-center">
      <div class="col-12 col-m-12 col-sm-12">
        <div class="card">
          <div class="card-header">
            <h3>Danh sách tài sản</h3>
            <a href="asset-add.html"> <i class="fas fa-plus-circle"></i>
            </a>
          </div>

          <div class="card-content">
            <p>Số lượng: 1</p>
            <table>
              <thead>
                <tr>
                  <th>#</th>
                  <th>Tên tài sản</th>
                  <!-- <th>Hình ảnh</th> -->
                  <th>Mô tả</th>
                  <th>Thời điểm tạo</th>
                  <th>Cập nhật cuối</th>
                </tr>
              </thead>
              <tbody>
                <tr class="row_link" data-link="asset_action.html"
                  onclick="clickRow(event)">
                  <td>1</td>
                  <td>Máy chủ Tomcat</td>
                  <!-- <td></td> -->
                  <td>Máy chủ Java Servlet/JSP, phiên bản Apache
                    Tomcat 9.0</td>
                  <td>12:00 1/1/2020</td>
                  <td>12:00 1/1/2020</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>



      </div>

    </div>
  </div>
  <!-- end main content -->
  <!-- import script -->
  <script src="assets/js/index.js"></script>
  <!-- end import script -->
</body>
</html>