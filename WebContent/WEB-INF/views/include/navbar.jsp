<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid main-nav" style="position: absolute; z-index: 100;display: flex;">
    <div class="main-nav-logo">
      <a href="${pageContext.request.contextPath}/home.htm">
        <img src="${pageContext.request.contextPath}/resources/img/logo-ptit.png" alt="logo" class="img-fluid">
      </a>
    </div>
    <div class="main-nav-center">
      <a href="${pageContext.request.contextPath}/dang-ky-mon-hoc.htm">ĐĂNG KÝ HỌC PHẦN</a>
      <a href="${pageContext.request.contextPath}/xem-hoc-phi.htm">XEM HỌC PHÍ</a>
    <!--   <a href="${pageContext.request.contextPath}/xem-diem.htm">XEM ĐIỂM</a> -->
      <a href="${pageContext.request.contextPath}/xem-tkb.htm">XEM TKB</a>
      <a href="${pageContext.request.contextPath}/thong-tin-ca-nhan.htm">THÔNG TIN CÁ NHÂN</a>
    </div>
    <div class="main-nav-last">
      <a href=" ${pageContext.request.contextPath}/thay-doi-mat-khau.htm">THAY ĐỔI MẬT KHẨU</a>
      <a href="${pageContext.request.contextPath}/">ĐĂNG XUẤT</a>
    </div>
 </div>