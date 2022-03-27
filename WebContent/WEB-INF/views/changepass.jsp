<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/changepass.css?version=51">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navbar.css?version=51">
<title>Thay đổi mật khẩu</title>
</head>

<body>
	<%@ include file="/WEB-INF/views/include/navbar.jsp"%>
    <div class="container-fluid main-nav" style="position: absolute; z-index: 100;display: flex;">
        <div class="main-nav-logo">
            <a href="${pageContext.request.contextPath}/home.htm">
                <img src="${pageContext.request.contextPath}/resources/img/logo-ptit.png" alt="logo" class="img-fluid">
            </a>
        </div>
        <div class="main-nav-center">
            <a href="">ĐĂNG KÝ HỌC PHẦN</a>
            <a href="">XEM HỌC PHÍ</a>
            <a href="">XEM ĐIỂM</a>
            <a href="">XEM TKB</a>
            <a href="">THÔNG TIN CÁ NHÂN</a>
        </div>
        <div class="main-nav-last">
            <a href=" #">THAY ĐỔI MẬT KHẨU</a>
            <a href="${pageContext.request.contextPath}/dang-xuat.htm">ĐĂNG XUẤT</a>
        </div>
    </div>
    <div class="container">
        <div class="main-form">
            <h4>
                Thay đổi mật khẩu
            </h4>
            <form action="${pageContext.request.contextPath}/thay-doi-mat-khau.htm" method="post">
                <div class="mb-3">
                    <label for="exampleInputEmail0" class="form-label mt-3">Mật khẩu hiện tại</label>
                    <input  class="form-control" id="exampleInputEmail0" aria-describedby="emailHelp" name="mk" required="required" type="password">
                    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Mật khẩu mới</label>
                    <input  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="mkmoi" required="required" type="password">
                    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                </div>
                <div>
                	<label style="color:red;">${message}</label>
                </div>
                <div class="mb-3 form-check" style="padding: 0;">
                    <a href="#" class="link">Quên mật khẩu</a>
                </div>
                <button type="submit" class="btn mb-3 form-btn-submit"
                    style="background: -webkit-linear-gradient(left, #a445b2, #fa4299);">Lưu thay đổi</button>
            </form>
        </div>
    </div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>