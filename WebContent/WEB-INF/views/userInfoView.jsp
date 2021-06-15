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
  <link rel="stylesheet" type="text/css" href="assets/css/form.css">
</head>
<body class="overlay-scrollbar">
	
  <jsp:include page="_navbar.jsp"></jsp:include>
  <jsp:include page="_sidebar.jsp"></jsp:include>
  
	<!-- main content -->
	<div class="wrapper">
		<p class="link_mark">Home > Thông tin tài khoản</p>
		<div class="row align-items-center">
			<div class="col-4 col-m-12 col-sm-12">
				<img class="img_description" src="assets/image/user_info.svg">
			</div>
      <div class="col-8 col-m-12 col-sm-12">
				<h2 class="form-title">Thông tin tài khoản</h2>
        <form>
          <div class="form-item">
            <label for="name">Họ tên</label>
            <input type="text" name="name" value="Phạm Trung Hiếu">
          </div>
  
          <div class="form-item">
            <label for="tel">Số điện thoại</label>
            <input type="tel" name="tel" value="0365006650"
						pattern="[0-9]{10}"
						title="Số điện thoại dài 10 chữ số" >
          </div>
  
          <div class="form-item">
            <label for="email">Email</label>
            <input type="email" name="email" value="hieu.pt183535@sis.hust.edu.vn">
          </div>
  
          <!-- <div class="form-item">
            <label id="gender-label">Giới tính</label>
            <div>
              <label for="gender"><input type="radio" name="gender" value="Nam" checked>Nam</label>
              <label for="gender"><input type="radio" name="gender" value="Nữ">Nữ</label>
              <label for="gender"><input type="radio" name="gender" value="Khác">Khác</label>
            </div>
          </div> -->
          <div class="form-item">
            <label for="company">Tổ chức</label>
            <input type="text" name="company" value="HUST">
          </div>
          <div class="form-item">
            <label for="position">Vị trí công việc</label>
            <input type="text" name="position" value="Senior">
          </div>
          <div class="form-item">
            <button type="submit" class="btn-type1" name="update-info" 
						onclick="return confirm('Cập nhật thông tin?')"
						value="">Cập nhật thông tin</button>
          </div>
        </form>
			</div>
		</div>
	</div>
	<!-- end main content -->
	<!-- import script -->
	<script src="assets/js/index.js"></script>
	<!-- end import script -->
</body>
</html>