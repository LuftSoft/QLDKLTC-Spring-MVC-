<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>LOGIN</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fontawesome/css/all.css">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/sign-in/">
    <link href="${pageContext.request.contextPath}/resources/css/login.css?version=51" rel="stylesheet">
	<link rel="icon" href="${pageContext.request.contextPath}/resources/img/logo-ptit.png">


    <!-- Bootstrap core CSS -->


    <!-- 
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style> -->


    <!-- Custom styles for this template -->
    <style type="text/css">
    	form{
    		max-width: 400px!important;
    	}
    </style>
</head>

<body class="text-center" style="background: -webkit-linear-gradient(left,#a445b2,#fa4299) ">

    <form action="${pageContext.request.contextPath}/home.htm" class="form-signin bg-light" style="padding: 50px 50px 70px 50px;border-radius: 10px;" method="post">
        <img class="mb-8" src="${pageContext.request.contextPath}/resources/img/logo-ptit.png" alt="" width="100" height="100">
        <h1 class="h3 mb-3 font-weight-normal pt-3 pb-3">Đăng nhập</h1>
        <div class="form-group">
            <label for="inputText" class="sr-only">Tên đăng nhập</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="Tên đăng nhập" required autofocus name="taikhoan">
        </div>
        <div class="form-group">
            <label for="inputPassword" class="sr-only">Mật khẩu</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Mật khẩu" required name="matkhau">
        </div>
        <label style="text-align: left;color: red">${message}</label>
        <div class="checkbox mb-3">
            
            <label for="" ><a href="forgot-password.html" style="margin-left: 160px">Quên mật khẩu</a></label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" style="background:-webkit-linear-gradient(left,#a445b2,#fa4299);
        outline: none;border:none;">Đăng nhập</button>
    </form>

</body>

</html>