<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
<link rel="stylesheet" type="text/css" href="assets/css/risk.css">
</head>
<body class="overlay-scrollbar">
  <jsp:include page="_navbar.jsp"></jsp:include>
  <jsp:include page="_sidebar.jsp">
    <jsp:param value="true" name="risk_active" />
  </jsp:include>

  <!-- main content -->
  <div class="wrapper">
    <p class="link_mark">Home > Đánh giá rủi ro</p>
    <div class="row">
      <div class="col-4 col-m-12 col-sm-12">
        <label for="risk_level">Lọc theo mức độ rủi ro</label> <select
          name="risk_level">
          <option>Cao</option>
          <option>Trung bình</option>
          <option>Thấp</option>
          <option>Không đáng kể</option>
        </select>
      </div>
      <div class="col-4 col-m-12 col-sm-12">
        <label for="sort">Sắp xếp</label> <select name="sort">
          <option>Thời gian cập nhật từ mới đến cũ</option>
          <option>Thời gian cập nhật từ cũ đến mới</option>
          <option>Theo ID tăng dần</option>
          <option>Theo mức độ rủi ro tăng dần</option>
          <option>Theo mức độ tác động tăng dần</option>
          <option>Theo khả năng xảy ra tăng dần</option>
        </select>
      </div>
      <div class="col-4 col-m-12 col-sm-12">
        <div>
          <a class="link_btn" href="risk-scale-setting.html">Cài đặt
            thang điểm đánh giá <i class="fas fa-cog"></i>
          </a>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-12 col-m-12 col-sm-12">
        <div class="card">
          <div class="card-header">
            <h3>Danh sách rủi ro</h3>

            <a href="risk-add.html"> <i class="fas fa-plus-circle"></i>
            </a>
          </div>

          <div class="card-content">
            <p>Số lượng: 2</p>
            <table>
              <thead>
                <tr>
                  <th>#</th>
                  <th>Mô tả ngắn</th>
                  <th>Lỗ hổng</th>
                  <th>Nguồn đe dọa</th>
                  <th>Mức độ rủi ro</th>
                  <th>Mức độ tác động</th>
                  <th>Khả năng xảy ra</th>
                </tr>
              </thead>
              <tbody>
                <tr class="row_link" data-link="risk_action.html"
                  onclick="clickRow(event)">
                  <td>2</td>
                  <td>Dữ liệu bị đánh cắp</td>
                  <td>Khả năng thực hiện SQL injection chưa được
                    khắc phục akndwnd jakwndk jowdcknk owjdocm owdoaoc
                    kajdkdn jfofjfjlf afkfj afdfsfj fjifij jpfjepjc
                    pdoofjfjwojcpo</td>
                  <td>Hacker</td>
                  <td>Cao</td>
                  <td>Cao</td>
                  <td>Cao</td>
                </tr>
                <tr class="row_link" data-link="risk_action.html"
                  onclick="clickRow(event)">
                  <td>1</td>
                  <td>Server bị sập</td>
                  <td>Bị tấn công DDOS</td>
                  <td>Hacker</td>
                  <td>Cao</td>
                  <td>Cao</td>
                  <td>Cao</td>
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