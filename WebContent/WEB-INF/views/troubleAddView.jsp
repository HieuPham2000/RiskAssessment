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
				<img src="assets/image/logo_side-1_line-black.png" alt="logo" class="logo logo-light">
				<img src="assets/image/logo_side-1_line-white.png" alt="logo" class="logo logo-dark">
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
			<li class="nav-item avt-wrapper">
				<div class="avt dropdown">
					<i class="fas fa-user user-icon dropdown-toggle" data-toggle="user-menu"></i>
					<!-- <i class="fas fa-user dropdown-toggle" data-toggle="user-menu"></i> -->
					<!-- <img src="assets/image/admin_avatar.png" alt="admin avatar" class="dropdown-toggle" data-toggle="user-menu"> -->
					<ul id="user-menu" class="dropdown-menu">
						<li  class="dropdown-menu-item">
							<a class="dropdown-menu-link" href="user-info.html">
								<div>
									<i class="fas fa-user-tie"></i>
								</div>
								<span>Thông tin tài khoản</span>
							</a>
						</li>
						<li class="dropdown-menu-item">
							<a class="dropdown-menu-link" href="user-setting.html">
								<div>
									<i class="fas fa-cog"></i>
								</div>
								<span>Cài đặt</span>
							</a>
						</li>
						<li  class="dropdown-menu-item">
							<a class="dropdown-menu-link" href="login.html">
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
	<!-- sidebar -->
	<div class="sidebar">
		<ul class="sidebar-nav">
			<li class="sidebar-nav-item">
				<a href="system-manage.html" class="sidebar-nav-link">
					<div>
						<i class="fas fa-network-wired"></i>
					</div>
					<span>
						Tổng quan hệ thống
					</span>
				</a>
			</li>
			<li class="sidebar-nav-item">
				<a href="asset-manage.html" class="sidebar-nav-link">
					<div>
						<i class="fas fa-server"></i>
					</div>
					<span>Quản lý tài sản</span>
				</a>
			</li>
			<li  class="sidebar-nav-item">
				<a href="risk-manage.html" class="sidebar-nav-link">
					<div>
						<i class="fas fa-tasks"></i>
					</div>
					<span>Đánh giá rủi ro</span>
				</a>
			</li>
			<li  class="sidebar-nav-item">
				<a href="trouble-history.html" class="sidebar-nav-link  active">
					<div>
						<i class="fas fa-history"></i>
					</div>
					<span>Lịch sử sự cố</span>
				</a>
			</li>
			<li  class="sidebar-nav-item">
				<a href="report.html" class="sidebar-nav-link">
					<div>
						<i class="fas fa-chart-bar"></i>
					</div>
					<span>Thống kê - báo cáo</span>
				</a>
			</li>
		
		</ul>
	</div>
	<!-- end sidebar -->





	<!-- main content -->
	<div class="wrapper">
		<p class="link_mark">Home > Lịch sử sự cố > Ghi nhận sự cố mới</p>
		<div class="row justify-content-center">
      <div class="col-8 col-m-12 col-sm-12">
				<h2 class="form-title">Ghi nhận sự cố mới</h2>
        <form>
          <div class="form-item">
            <label for="name">Mô tả ngắn <span>(*)</span></label>
            <textarea name="short_description" rows="3" placeholder="Mô tả ngắn về sự cố" required></textarea>
          </div>

          <div class="form-item">
            <label for="description">Chi tiết <span>(*)</span></label>
            <textarea name="description" rows="5" placeholder="Chi tiết sự cố" required></textarea>
          </div>
  
          <div class="form-item">
            <label id="status-label">Trạng thái <span>(*)</span></label>
            <div class="input-container">
              <label for="status">
                <input type="radio" name="status" value="new" checked>
                <span class="dot">
                  Chưa xử lý
                  <i class="bg-danger"></i>
                </span>
              </label>
              <label for="status">
                <input type="radio" name="status" value="pending">
                <span class="dot">
                  Đang xử lý
                  <i class="bg-warning"></i>
                </span>
              </label>
              <label for="status">
                <input type="radio" name="status" value="done">
                <span class="dot">
                  Đã xử lý
                  <i class="bg-success"></i>
                </span>
              </label>
            </div>
          </div>

          <div class="form-item">
            <label for="solution">Khắc phục</label>
            <textarea name="solution" rows="5" placeholder="Giải pháp khắc phục sự cố"></textarea>
          </div>

          <div class="form-item">
              <!-- Định dạng value: yyyy/mm/dd -->
              <label for="date">Ngày ghi nhận</label>
              <input name="date" type="date" id="date">
          </div>
          <div class="form-item">
            <!-- Định dạng value: hh/MM -->
            <label for="date">Thời điểm ghi nhận</label>
            <input name="time" type="time" id="time">
        	</div>

					<div class="form-item">
            <label>Rủi ro liên quan</label>
						<div class="option_container">
							<div class="tag_container" id="tag_risk_container"></div>
							<div>
								<select id="tag_risk">
									<option selected disabled="true">Chọn rủi ro liên quan</option>
									<option value="a">a</option>
									<option value="b">b</option>
									<option value="c">c</option>
								</select>
								<span onclick="addTag('tag_risk', 'tag_risk_container')">
									<i class="fas fa-plus-circle"></i>
								</span>
							</div>
						</div>	
        	</div>

					<div class="form-item">
            <label>Tài sản liên quan</label>
						<div class="option_container">
							<div class="tag_container" id="tag_asset_container"></div>
							<div>
								<select id="tag_asset">
									<option selected disabled="true">Chọn tài sản liên quan</option>
									<option value="a">asset a</option>
									<option value="b">asset b</option>
									<option value="c">asset c</option>
								</select>
								<span onclick="addTag('tag_asset', 'tag_asset_container')">
									<i class="fas fa-plus-circle"></i>
								</span>
							</div>
						</div>	
        	</div>

          <div class="form-item justify-content-center">
            <button type="submit" name="add"
						onclick="return confirm('Ghi nhận sự cố mới?')"
						value="">Thêm mới</button>
            <a class="btn btn-type2" name="cancel" 
						onclick="return confirm('Thông tin sẽ KHÔNG được lưu?')"
						href="trouble-history.html">Hủy</button>
          </div>
        </form>
			</div>
		</div>
	</div>
	<!-- end main content -->
	<!-- import script -->
	<script src="assets/js/index.js"></script>
	<script src="assets/js/select.js"></script>
	<!-- end import script -->
</body>
</html>