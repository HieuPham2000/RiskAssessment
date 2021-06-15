<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <title>Risk Assessment Admin</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
  <link rel="icon" type="image/png" href="assets/image/logo.png"/>

  <!-- Import lib -->
  <!-- <link rel="stylesheet" type="text/css" href="assets/fontawesome-free/css/all.min.css"> -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/aa8e5675e3.js" crossorigin="anonymous"></script>
  <!-- End import lib -->

  <link rel="stylesheet" type="text/css" href="assets/css/style.css">
  <link rel="stylesheet" type="text/css" href="assets/css/style_general.css">
</head>
<body class="overlay-scrollbar">

  <jsp:include page="_navbar.jsp"></jsp:include>
  <jsp:include page="_sidebar.jsp">
    <jsp:param value="true" name="trouble_active"/>
  </jsp:include>
  
  <!-- main content -->
  <div class="wrapper">
    <p class="link_mark">Home > Lịch sử sự cố</p>
    <div class="row justify-content-center">
      <div class="col-12 col-m-12 col-sm-12">
        <div class="card">
          <div class="card-header">
            <h3>Danh sách sự cố</h3>
            <a href="trouble-add.html">
              <i class="fas fa-plus-circle"></i>
            </a>
          </div>

          <div class="card-content">
            <p>Số lượng: 2</p>
            <table>
              <thead>
                <tr>
                  <th>#</th>
                  <th>Mô tả ngắn</th>
                  <th>Chi tiết</th>
                  <th>Tình trạng</th>
                  <!-- <th>Khắc phục</th> -->
                  <th>Ghi nhận</th>
                  <th>Cập nhật</th>
                </tr>
              </thead>
              <tbody>
                <tr class="row_link" data-link="trouble_action.html" onclick="clickRow(event)">
                  <td>2</td>
                  <td>Lỗi kết nối cơ sở dữ liệu</td>
                  <td>Lỗi kết nối cơ sở dữ liệu MS SQL Server, lỗi TCP/IP</td>
                  <td>
                    <span class="dot">
                      <i class="bg-success"></i>
                      Đã xử lý
                    </span>
                  </td>
                  <!-- <td>Do xung đột cổng ứng dụng. Thay đổi cổng ứng dụng.</td> -->
                  <td>11:15 2/1/2020</td>
                  <td>11:20 2/1/2020</td>
                </tr>
                <tr class="row_link" data-link="trouble_action.html" onclick="clickRow(event)">
                  <td>1</td>
                  <td>Lỗi máy chủ Tomcat</td>
                  <td>Máy chủ dừng đột ngột</td>
                  <td>
                    <span class="dot">
                      <i class="bg-success"></i>
                      Đã xử lý
                    </span>
                  </td>
                  <!-- <td>Do lỗi config servlet. Thay đổi đường dẫn cho đúng.</td> -->
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