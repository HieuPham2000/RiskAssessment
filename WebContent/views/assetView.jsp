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
  
  #btn-add {
    display: inline-block; 
    
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
<div class="wrapper">
<div class="row">

<h2 id="notice">Danh sách tài sản trống</h2>
<img id="empty-img" src="views/assets/image/empty.svg">
<a id="btn-add" href="${pageContext.request.contextPath}/addAsset">Thêm Tài sản</a>
</div>

</div>
<script>
window.addEventListener('load', () => {active_sidebar_nav_link(1);});
</script>
<jsp:include page="footer/footer.jsp" />