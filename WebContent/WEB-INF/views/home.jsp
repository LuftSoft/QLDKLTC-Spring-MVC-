<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/css/home.css?version=51'/>"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navbar.css?version=51">
<title>Trang chủ</title>
</head>
<body class="text-center" style="background: -webkit-linear-gradient(left,#a445b2,#fa4299) ">
<%@ include file="/WEB-INF/views/include/navbar.jsp"%>

  <section>
    <div class="main-contain" style="background: -webkit-linear-gradient(left,#a445b2,#fa4299);">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-6">
            <div class="main-text">
              <h1>XIN CHÀO!</h1>
              <h1>${SinhVien.getHo()} ${SinhVien.getTen()}</h1>
            </div>
            <div class="main-button">
              <a href="${pageContext.request.contextPath}/dang-ky-mon-hoc.htm" class="btn-item-1">ĐĂNG KÝ HỌC PHẦN</a>
              <a href="${pageContext.request.contextPath}/xem-hoc-phi.htm" class="btn-item-2">XEM HỌC PHÍ</a>
            </div>
          </div>
          <div class="col-6">
            <img src="${pageContext.request.contextPath}/resources/img/1.png" alt="a image" style="box-sizing: border-box;position: relative;">
          </div>
        </div>
      </div>
    </div>
  </section>
  <%@ include file="/WEB-INF/views/include/footer.jsp"%>
 <!-- </body></html>-->