<%@page import="model.UserSystem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="header/header.jsp" />
<jsp:include page="header/sidebar.jsp" />
<style>
#empty-img {
  width: 400px;
  height: 400px;
  display: block;
}

.btn-add {
  display: inline-block;
  margin: 10px 0px;
  padding: 10px 20px;
  border-radius: 5px;
  text-decoration: none;
  background-color: var(--primary-color);
  color: #ffffff;
}

#notice {
  text-align: center;
}

/* .wrapper {
    background-color: white;
  } */
.row {
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
</style>
<%
//   User user = (User)request.getAttribute("user");
%>
<div class="wrapper">
  <h2>Thông tin tài khoản</h2>
  <h3>Tên đăng nhập: <span>${user.getUsername()}</span></h3>
  <h3>Email: ${user.getEmail()}</h3>
  <h3>Họ và tên: ${user.getName()}</h3>
  <h3>Chức vụ: ${user.getPosition()}</h3>
  <h3>Tổ chức: </h3>
  <h3>Thời điểm tạo tài khoản: ${user.getCreated_time()}</h3>
  <h3>Lần cuối cập nhật tài khoản: ${user.getModified_time()}</h3>
    <a class="btn-add" href="${pageContext.request.contextPath}/editUserInfo?id=${user.getId()}">
      <i class="fas fa-pen-square"></i> 
      Chỉnh sửa
    </a>
</div>
<script>
window.addEventListener('load', () => {active_sidebar_nav_link(-1);});
</script>
<jsp:include page="footer/footer.jsp" />