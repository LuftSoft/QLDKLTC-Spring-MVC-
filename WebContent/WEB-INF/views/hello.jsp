<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fontawesome-free-5.15.4-web/css/all.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/starter-template/">
    <!-- Bootstrap core CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/starter-template.css" rel="stylesheet">
    <style type="text/css">
    	body{
    	background: -webkit-linear-gradient(left,#a445b2,#fa4299);
    	}
    	.main-container{
    		background: #fff;
    		height: 800px !important;
    		padding: 50px 30px;
    		
    	}
    	img{
    		height: 40px;
    		width:40px;
    		
    	}
    	.nav-link{
    		font-weight: 500 !important;
    		padding: 9px 15px!important;
    		border-radius: 20px;
    		transition: all 0.2s!important;
    	}
    	.navbar-brand{
    		font-size: 20px!important;
    	}
    	.nav-link:hover{
    		background: #0088a9;
    		color: #fff!important;
    	}
    </style>
</head>
 <body>
	<nav class="navbar navbar-expand-md navbar-light fixed-top" style="background-color: #24252a;">
  	<a class="navbar-brand" href="http://localhost:8080/CTDLGT/home.htm" style="margin-right: 100px;font-weight: 500 !important;color: #fff;"><img class="img-fluid" alt="logo" src="${pageContext.request.contextPath}/resources/img/logo-ptit.png">
     TRANG CHỦ</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  	</button>

  	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active" style="margin-right: 20px;">
        <a class="nav-link" href="http://localhost:8080/CTDLGT/dang-ky-mon-hoc.htm" style="color: #fff;">ĐĂNG KÝ MÔN HỌC </a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="http://localhost:8080/CTDLGT/xem-hoc-phi.htm" style="color: #fff;">XEM HỌC PHÍ</a>
      </li>
    </ul>
    <ul style="margin: 0">
    <li class="nav-item account" class="btn dropdown" data-toggle="dropdown" style="display: inline-block;">
      <a class="nav-link text-uppercase" href="" style="display:inline-block;color: #fff;">Thanh Hung
          </a>
  	</li>
  	<li class="nav-item account"  class="btn dropdown" data-toggle="dropdown" style="display: inline-block;">
      <a class="nav-link text-uppercase" href="http://localhost:8080/CTDLGT/dang-nhap.htm" style="display:inline-block;color: #fff;">Đăng xuất
          </a>
  	</li>
  	</ul>
  </div>
</nav>
	<h1>Hello</h1>
</body>
</html>