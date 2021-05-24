<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- sidebar -->
<div class="sidebar">
  <ul class="sidebar-nav">
    <li class="sidebar-nav-item">
      <a href="${pageContext.request.contextPath}/system" class="sidebar-nav-link">
        <div>
          <i class="fas fa-server"></i>
        </div>
        <span>
          Tổng quan hệ thống
        </span>
      </a>
    </li>
    <li class="sidebar-nav-item">
      <a href="${pageContext.request.contextPath}/asset" class="sidebar-nav-link">
        <div>
          <i class="fas fa-database"></i>
        </div>
        <span>Quản lý tài sản</span>
      </a>
    </li>
    <li  class="sidebar-nav-item">
      <a href="${pageContext.request.contextPath}/risk" class="sidebar-nav-link">
        <div>
          <i class="fas fa-tasks"></i>
        </div>
        <span>Đánh giá rủi ro</span>
      </a>
    </li>
    <li  class="sidebar-nav-item">
      <a href="${pageContext.request.contextPath}/trouble" class="sidebar-nav-link">
        <div>
          <i class="fas fa-history"></i>
        </div>
        <span>Ghi nhận sự cố</span>
      </a>
    </li>
    <li  class="sidebar-nav-item">
      <a href="${pageContext.request.contextPath}/report" class="sidebar-nav-link">
        <div>
          <i class="far fa-file-alt"></i>
        </div>
        <span>Xuất báo cáo</span>
      </a>
    </li>
  
  </ul>
</div>
<!-- end sidebar -->