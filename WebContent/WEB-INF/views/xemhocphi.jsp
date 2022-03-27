<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>Học phí</title>
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css?version=51'/>"/>
<style>
	main{
		margin-top: 100px;
		padding: 50px 80px !important;
	}
	.money-items{
		display: inline-block;
		width: 320px;
	}
	span{
		font-weight: 500;
	}
</style>
</head>
<body class="text-center" style="background: -webkit-linear-gradient(left,#a445b2,#fa4299) ">
<%@ include file="/WEB-INF/views/include/navbar.jsp"%>
<main role="main" class="container" style="background-color: #fff;">
<div class="row mt-4 mb-5">
  <h3 class="mb-3">Học kỳ 2 - năm học 2021-2022</h3>
  <div style="background: #fff" style="width: 100%">
    <table border="1" class="mb-3">
        <tr style="background-color: rgb(117, 117, 236); color: white;">
            <td>STT</td>
            <td>Mã MH</td>
            <td>Tên môn học</td>
            <td>Mã nhóm</td>
            <td>Tổ thực hành</td>
            <td>Số TC</td>
            <td>TCHP</td>
            <td>Học phí</td>
            <td>Miễn giảm</td>
            <td>Phải đóng</td>
            <td>Ghi chú</td>
        </tr>
        <c:forEach var="ds" items="${dsdk}" begin="0" end="${dsdk.size()}" varStatus="st">
        	<tr>
            	<td>${st.index+1}</td>
            	<td>${ds.getMAMH()}</td>
            	<td>${ds.getTENMH()}</td>
            	<td>${ds.getNHOM()}</td>
            	<td>${ds.getNHOM()+st.index%2}</td>
            	<td>${ds.getSTC()}</td>
            	<td>${ds.getSTC()}</td>
            	<td>${ds.getSTC()*480000}</td>
            	<td>0</td>
            	<td>${ds.getSTC()*480000}</td>
            	<td></td>
        	</tr>
        </c:forEach>
    </table>
</div>
<div style="text-align: left;">
	<div>
		<span  class="money-items">Tổng số tín chỉ:</span>
		<span>${stc}</span>
	</div>
	<div>
		<span class="money-items">Tổng số tín chỉ học phí:</span>
		<span>${stc}</span>
	</div>
	<div>
		<span class="money-items">Tổng số tiền học phí học kỳ là:</span>
		<span>${tongtien} VND</span>
	</div>
	<div>
		<span class="money-items">Tổng số tiền đóng tối thiểu lần đầu:</span>
		<span>${tongtien} VND</span>
	</div>
	<div>
		<span class="money-items">Tổng số tiền đã đóng trong học kỳ:</span>
		<span>0 VND</span>
	</div>
	<div>
		<span class="money-items">Số tiền còn nợ:</span>
		<span>${tongtien} VND</span>
	</div>
</div>
</div>
</main><!-- /.container -->

   

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
