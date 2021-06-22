### Đồ án Project 2: Website hỗ trợ đánh giá rủi ro cho hệ thống thông tin:zap::zap::zap:

---
#### 1. Chức năng chính :pencil:

-	Quản lý thông tin người dùng (thông tin cá nhân), quản lý tài khoản (đổi mật khẩu, xóa tài khoản)

-	Quản lý hệ thống thông tin (khởi tạo, cập nhật, chuyển đổi chủ sở hữu, xóa hệ thống thông tin)

-	Quản lý tài sản (xem danh sách, thêm mới, cập nhật, xóa tài sản)

-	Đánh giá rủi ro (xem danh sách, thêm mới, cập nhật, xóa rủi ro; đánh giá rủi ro; cài đặt thang điểm đánh giá)

-	Quản lý lịch sử sự cố (xem danh sách, thêm mới, cập nhật, xóa sự cố)

-	Thống kê (thống kê số lượng rủi ro, sự cố theo mức độ, trạng thái; cung cấp biểu đồ trực quan)

-	Xuất báo cáo đánh giá rủi ro (tạo tài liệu dạng Word cho phép người dùng tải về máy cá nhân). <a href="https://drive.google.com/file/d/1GsjqFThSsZckL6m-Z0yoE0yLtNrt7nuc/view?usp=sharing">Xem ví dụ</a>.

Chi tiết xem thêm <a href="https://drive.google.com/file/d/15WX33r0eOnVj3lqP9Eox8A1UnpC3WuRp/view?usp=sharing">báo cáo</a>.

#### 2. Công nghệ sử dụng :star:

- Java JSP/Servlet

- HTML, CSS, JS

- MS SQL Server

- Bcrypt

- Spire.DOC

#### 3. Cấu hình project :computer:

- Cài đặt ```Java 1.8```, ```Eclipse IDE for Enterprise Java Developers``` (hoặc IDE khác).

- Import project và cài đặt server ```Apache Tomcat``` (phiên bản 9)

- Cấu hình Server, Project Facets

![image](https://user-images.githubusercontent.com/61912505/122899253-ddc14f80-d375-11eb-854d-f9d79e528ab8.png)

![image](https://user-images.githubusercontent.com/61912505/122899344-f29de300-d375-11eb-81b8-a9953fc39c8b.png)

- Cấu hình Java Build Path: thêm JRE library, Server library, các file jar trong thư mục ```WebContent/WEB-INF/lib```. Đồng thời, thêm các file jar này vào trong thư mục thư viện của server

![image](https://user-images.githubusercontent.com/61912505/122899438-06494980-d376-11eb-87e1-04d13aee431c.png)

![image](https://user-images.githubusercontent.com/61912505/122899643-3264ca80-d376-11eb-89ca-9d075d19a48d.png)

- Cấu hình Deployment Assembly.

![image](https://user-images.githubusercontent.com/61912505/122899162-c71af880-d375-11eb-8aa3-f8a5229ededa.png)


- Sử dụng SQL Server: chạy file ```risk_assessment-10052021.sql``` để tạo table, chạy đoạn truy vấn tạo view trong ```SQLQuery2.sql``` (thư mục ```db```).

- Cấu hình lại thông số kết nối cơ sở dữ liệu trong file ```jdbc/SQLServerConnUtils_SQLJDBC.java```.

#### 4. Chạy project :computer:

- Run server Apache Tomcat v9.0

- Truy cập: http://localhost:8080/Risk-Assessment/ (số hiệu cổng tùy vào thiết lập)

- Giao diện:

![image](https://user-images.githubusercontent.com/61912505/122900177-a7380480-d376-11eb-8878-edcb56eadf10.png)

![image](https://user-images.githubusercontent.com/61912505/122900311-c6369680-d376-11eb-9af4-4f3b8e447cdd.png)