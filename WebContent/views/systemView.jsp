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
<div class="wrapper">
  <div class="row">

    <%
    //   if(request.getAttribute("listUserSystems") != null) {
    //    out.print("khác null");
    //   }
    List<UserSystem> list = (List<UserSystem>) request.getAttribute("listUserSystems");
    /*   out.print(list.size());
      out.print(list.get(0).getName()); */
    if (list == null || list.size() == 0) {
    %>
    <h2 id="notice">You haven't add system yet!</h2>
    <img id="empty-img" src="views/assets/image/empty.svg"> 
    <a class="btn-add" href="${pageContext.request.contextPath}/addSystem">Add
      system</a>
  </div>
  <%
  } else {
  %>
  <h2>Hệ thống</h2>
  <h3><%=list.get(0).getName()%></h3>
  <p><%=list.get(0).getDescription()%></p>
  <div>
    <a class="btn-add"
      href="${pageContext.request.contextPath}/editSystem?id=<%= list.get(0).getId()%>">
      <i class="fas fa-pen-square"></i> Chỉnh sửa thông tin
    </a>
     <a class="btn-add"
      href="${pageContext.request.contextPath}/deleteSystem?id=<%= list.get(0).getId()%>">
      <i class="fas fa-trash-alt"></i> Xóa thông tin
    </a>
  </div>
  <%
  }
  %>

</div>
<script>
// active_sidebar_nav_link(0);
// window.addEventListener('load', active_sidebar_nav_link);

window.addEventListener('load', () => {active_sidebar_nav_link(0);});
</script>
<jsp:include page="footer/footer.jsp" />