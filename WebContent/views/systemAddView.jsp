<%@page import="model.UserSystem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="header/header.jsp" />
<jsp:include page="header/sidebar.jsp" />
<style>
  form {
    width: 60%;  
  }
  input, textarea, button {
    display: block;
    padding: 15px 20px;
    margin: 20px 0px;
    width: 100%;
  }
  .wrapper {
    background-color: white;
  }
  
  .row {
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
</style>
<div class="wrapper">
<div class="row">
  <p>${user}</p>
  <h2>Nhập thông tin về hệ thống</h2>
  <form action="${pageContext.request.contextPath}/addSystem" method="POST">
      <input type="text" placeholder="Tên hệ thống" name="systemName" required>
      <textarea rows="5" cols="10" placeholder="Mô tả" name="systemDescription" required></textarea>
      <button type="submit">Save System</button>
   </form>
</div>
<script>
window.addEventListener('load', () => {active_sidebar_nav_link(0);});
</script>
<jsp:include page="footer/footer.jsp" />