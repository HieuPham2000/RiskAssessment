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
    <jsp:param value="true" name="report_active"/>
  </jsp:include>
  
<!-- main content -->
	<div class="wrapper">
		<p class="link_mark">Home > Thống kê và báo cáo</p>
		<div class="col-12 col-m-12 col-sm-12">
				<a class="link_btn right" href="#">Xuất báo cáo <i class="fas fa-file"></i></a>
		</div>

		<div class="row">
			<div class="col-12 col-m-12 col-sm-12">
        <h2 class="notice">Thống kê sự cố</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-3 col-m-6 col-sm-6">
				<div class="counter bg-primary">
					<h3>100</h3>
					<p>Tổng số</p>
				</div>
			</div>

			<div class="col-3 col-m-6 col-sm-6">
				<div class="counter bg-danger">
					<h3>0</h3>
					<p>Chưa xử lý</p>
				</div>
			</div>

			<div class="col-3 col-m-6 col-sm-6">
				<div class="counter bg-warning">
					<h3>90</h3>
					<p>Đang xử lý</p>
				</div>
			</div>

			<div class="col-3 col-m-6 col-sm-6">
				<div class="counter bg-success">
					<h3>90</h3>
					<p>Đã xử lý</p>
				</div>
			</div>
			
		</div>

		<div class="row">
			<div class="col-12 col-m-12 col-sm-12">
				<div style="overflow-x: auto;">
					<div class="card">
						<!-- <div class="card-header">
							<h3>
								Chartjs
							</h3>
						</div> -->
						<div class="card-content">
							<canvas id="trouble_chart"></canvas>
						</div>
					</div>
				</div>
			
			</div>
		</div>


		<div class="row">
			<div class="col-12 col-m-12 col-sm-12">
        <h2 class="notice">Thống kê rủi ro</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-3 col-m-6 col-sm-6">
				<div class="counter bg-primary">
					<h3>50</h3>
					<p>Tổng số</p>
				</div>
			</div>

			<div class="col-3 col-m-6 col-sm-6">
				<div class="counter bg-danger">
					<h3>10</h3>
					<p>Mức độ cao</p>
				</div>
			</div>

			<div class="col-3 col-m-6 col-sm-6">
				<div class="counter bg-warning">
					<h3>20</h3>
					<p>Mức độ trung bình</p>
				</div>
			</div>

			<div class="col-3 col-m-6 col-sm-6">
				<div class="counter bg-success">
					<h3>20</h3>
					<p>Mức độ thấp</p>
				</div>
			</div>
			
		</div>


		<div class="row">
			<div class="col-12 col-m-12 col-sm-12">
				<div style="overflow-x: auto;">
					<div class="card">
						<!-- <div class="card-header">
							<h3>
								Chartjs
							</h3>
						</div> -->
						<div class="card-content">
							<canvas id="risk_chart"></canvas>
						</div>
					</div>
				</div>
			
			</div>
		</div>
	

	</div>
	<!-- end main content -->
	<!-- import script -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
	<script src="assets/js/index.js"></script>
	<script src="assets/js/my_chart.js"></script>
	<!-- end import script -->
</body>
</html>