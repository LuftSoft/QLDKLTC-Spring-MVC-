<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navbar.css?version=51">
    <title>Thông tin sinh viên</title>
    <style>
        body {
            background: -webkit-linear-gradient(left, #a445b2, #fa4299);
        }

        .main-card {
            margin-top: 200px;
        }
        div a:hover{
        	text-decoration:none;
        }
        .first-item{
        	width: 200px;
        }
    </style>
</head>

<body>
	<%@ include file="/WEB-INF/views/include/navbar.jsp"%>
    <div class="container">
        <div class="card main-card">
            <div class="card-header">
                Thông tin sinh viên
            </div>
            <div class="card-body" style="padding-left: 40px;">
                <div class="row">
                    <p class="first-item">Mã số sinh viên:</p>
                    <p>${masv}</p>
                </div>
                <div class="row">
                    <p class="first-item">Họ tên sinh viên:</p>
                    <p>${ho} ${ten}</p>
                </div>
                <div class="row">
                    <p class="first-item">Giới tính:</p>
                    <p>${gioitinh}</p>
                </div>
                <div class="row">
                    <p class="first-item">Nơi sinh:</p>
                    <p>${quequan}</p>
                </div>
                <div class="row">
                    <p class="first-item">Lớp:</p>
                    <p>${malop}( ${tenlop})</p>
                </div>
                <div class="row">
                    <p class="first-item">Ngành:</p>
                    <p> ${tennganh}</p>
                </div>
                <div class="row">
                    <p class="first-item">Khoa:</p>
                    <p>${tenkhoa}</p>
                </div>
                <div class="row">
                    <p class="first-item">Hệ đào tạo:</p>
                    <p>Đại học Chính Quy</p>
                </div>
                <div class="row">
                    <p class="first-item">Niên khóa:</p>
                    <p>${nienkhoa}</p>
                </div>
            </div>
            <div class="card-footer text-muted">
                Cố vấn học tập
            </div>
        </div>
    </div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>