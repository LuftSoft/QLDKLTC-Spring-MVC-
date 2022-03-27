<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navbar.css?version=51">
    <title>Thời khóa biểu</title>
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
        .main-contain{
        	background: #fff;
        	margin-top: 120px;
        	padding: 30px 60px;
        }
        .col-header{
        	padding: 0 10px;
        	margin-bottom: 5px;
        }
    </style>
</head>

<body>
	<%@ include file="/WEB-INF/views/include/navbar.jsp"%>

    <main role="main" class="container main-contain">
        <div class="row">
            <div class="col col-header" >
                <label for="">
                    Chọn học kỳ xem TKB:</label>
                <select class="form-select" aria-label="Default select example">
                    <option selected>Học kỳ 2-Năm học 2021-2022</option>
                    <option value="1">Học kỳ 1-Năm học 2021-2022</option>
                    <option value="2">Học kỳ 3-Năm học 2021-2022</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col col-header mb-4">
                <select class="form-select" aria-label="Default select example">
                    <option selected>TKB theo tuần</option>
                    <option value="1">TKB toàn trường</option>
                    <option value="2">TKB học kỳ cá nhân</option>
                </select>
                <select class="form-select" aria-label="Default select example" id="select-week">
                    
                </select>
            </div>
        </div>
        <div class="row">
            <table  class="classTable mb-3"   
                style="border-color:#999999;border-width:1px;border-style:Solid;height:100%;width:100%;border-collapse:collapse;">
                <thead>
                    <tr  style="height:30px;">
                        <td  
                            style="height:18px;width:50px;text-align: center;"></td>
                        <td  
                            style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;height:18px;width:100px;white-space:nowrap;text-align: center;">
                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblt2" class="Label">THỨ HAI</span></td>
                        <td  
                            style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;text-align: center;">
                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblt3" class="Label">THỨ BA</span></td>
                        <td  
                            style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;text-align: center;">
                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblt4" class="Label">THỨ TƯ</span></td>
                        <td  
                            style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;text-align: center;">
                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblt5" class="Label">THỨ NĂM</span></td>
                        <td  
                            style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;text-align: center;">
                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblt6" class="Label">THỨ SÁU</span></td>
                        <td  
                            style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;text-align: center;">
                            <span id="ctl00_ContentPlaceHolder1_ctl00_lblt7" class="Label">THỨ BẢY</span></td>
                        <td  
                            style="color:White;background-color:#6699CC;border-width:1px;border-style:solid;font-size:11px;width:100px;text-align: center;">
                            <span id="ctl00_ContentPlaceHolder1_ctl00_lbltcn" class="Label">CHỦ NHẬT</span></td>
                        <td  style="width:50px;"></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td title="Tiết 1" 
                            style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">
                            Tiết 1</td>
                        
                        <c:choose>
                        	<c:when test="${MON1.getTENMH() != null}">
                        	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${MON1.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${MON1.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 	</td>
                        </c:when>
                        <c:when test="${MON1.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                        </c:when>
                        </c:choose>
                        
                        <c:choose>
                        	<c:when test="${TUE1.getTENMH() != null}">
                        	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${TUE1.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${TUE1.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 	</td>
                        </c:when>
                        <c:when test="${TUE1.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                        </c:when>
                        </c:choose>
            			<c:choose>
                        	<c:when test="${WED1.getTENMH() != null}">
                        	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${WED1.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${WED1.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 	</td>
                        </c:when>
                        <c:when test="${WED1.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                        </c:when>
                        </c:choose>
            			<c:choose>
                        	<c:when test="${THU1.getTENMH() != null}">
                        	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${THU1.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${THU1.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 	</td>
                        </c:when>
                        <c:when test="${THU1.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                        </c:when>
                        </c:choose>
           				 <c:choose>
                        	<c:when test="${FRI1.getTENMH() != null}">
                        	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${FRI1.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${FRI1.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 	</td>
                        </c:when>
                        <c:when test="${FRI1.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                        </c:when>
                        </c:choose>
            			<c:choose>
                        	<c:when test="${SAT1.getTENMH() != null}">
                        	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${SAT1.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${SAT1.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 	</td>
                        </c:when>
                        <c:when test="${SAT1.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                        </c:when>
                        </c:choose>
            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
            <td title="Tiết 1"  style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 1</td>
            </tr>
            <tr>
                <td title="Tiết 2" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 2</td>
                <c:forEach begin="1" end="${7-sang}">
                	<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                </c:forEach>
                <td title="Tiết 2" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 2</td>
            </tr>
            <tr>
                <td title="Tiết 3" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 3</td>
                <c:forEach begin="1" end="${7-sang}">
                	<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                </c:forEach>
                <td title="Tiết 3" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 3</td>
            </tr>
            <tr>
                <td title="Tiết 4" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 4</td>
                <c:forEach begin="1" end="${7-sang}">
                	<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                </c:forEach>
                <td title="Tiết 4" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 4</td>
            </tr>
            <tr>
                <td title="Tiết 5" 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">
                    Tiết 5</td>
                <c:choose>
                     <c:when test="${MON2.getTENMH() != null}">
                       	<td  rowspan="2" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;">
                            <table style='text-align:left;cursor:pointer' class='textTable'>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='color:Teal;width:100%'>${MON2.getTENMH()}</span></td>
                                </tr>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='font-style:italic; color:gray;width:100%'>Phòng: ${MON2.getMAPHONG()}</span></td>
                                </tr></table></td>
                     </c:when>
                     <c:when test="${MON2.getTENMH() == null}"><td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
                <c:choose>
                     <c:when test="${TUE2.getTENMH() != null}">
                       	<td  rowspan="2" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;">
                            <table style='text-align:left;cursor:pointer' class='textTable'>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='color:Teal;width:100%'>${TUE2.getTENMH()}</span></td>
                                </tr>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='font-style:italic; color:gray;width:100%'>Phòng: ${TUE2.getMAPHONG()}</span></td>
                                </tr></table></td>
                     </c:when>
                     <c:when test="${TUE2.getTENMH() == null}"><td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
                <c:choose>
                     <c:when test="${WED2.getTENMH() != null}">
                       	<td  rowspan="2" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;">
                            <table style='text-align:left;cursor:pointer' class='textTable'>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='color:Teal;width:100%'>${WED2.getTENMH()}</span></td>
                                </tr>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='font-style:italic; color:gray;width:100%'>Phòng: ${WED2.getMAPHONG()}</span></td>
                                </tr></table></td>
                     </c:when>
                     <c:when test="${WED2.getTENMH() == null}"><td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
                <c:choose>
                     <c:when test="${THU2.getTENMH() != null}">
                       	<td  rowspan="2" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;">
                            <table style='text-align:left;cursor:pointer' class='textTable'>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='color:Teal;width:100%'>${THU2.getTENMH()}</span></td>
                                </tr>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='font-style:italic; color:gray;width:100%'>Phòng: ${THU2.getMAPHONG()}</span></td>
                                </tr></table></td>
                     </c:when>
                     <c:when test="${THU2.getTENMH() == null}"><td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
                <c:choose>
                     <c:when test="${FRI2.getTENMH() != null}">
                       	<td  rowspan="2" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;">
                            <table style='text-align:left;cursor:pointer' class='textTable'>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='color:Teal;width:100%'>${FRI2.getTENMH()}</span></td>
                                </tr>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='font-style:italic; color:gray;width:100%'>Phòng: ${FRI2.getMAPHONG()}</span></td>
                                </tr></table></td>
                     </c:when>
                     <c:when test="${FRI2.getTENMH() == null}"><td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
                <c:choose>
                     <c:when test="${SAT2.getTENMH() != null}">
                       	<td  rowspan="2" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;">
                            <table style='text-align:left;cursor:pointer' class='textTable'>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='color:Teal;width:100%'>${SAT2.getTENMH()}</span></td>
                                </tr>
                                <tr><td style="font-size: 14px;width:113px;display:block">
                                        <span style='font-style:italic; color:gray;width:100%'>Phòng: ${SAT2.getMAPHONG()}</span></td>
                                </tr></table></td>
                     </c:when>
                     <c:when test="${SAT2.getTENMH() == null}"><td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td title="Tiết 5" 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">
                    Tiết 5</td>
            </tr>
            <tr>
                <td title="Tiết 6" 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">
                    Tiết 6</td>
                <c:forEach begin="1" end="${7-trua}">
                	<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                </c:forEach>
                <td title="Tiết 6"
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">
                    Tiết 6</td>
            </tr>
            <tr>
                <td title="Tiết 7" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 7</td>
                <c:choose>
                     <c:when test="${MON3.getTENMH() != null}">
                       	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${MON3.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${MON3.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 </td>
                     </c:when>
                     <c:when test="${MON3.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
                <c:choose>
                     <c:when test="${TUE3.getTENMH() != null}">
                       	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${TUE3.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${TUE3.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 </td>
                     </c:when>
                     <c:when test="${TUE3.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
            	<c:choose>
                     <c:when test="${WED3.getTENMH() != null}">
                       	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${WED3.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${WED3.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 </td>
                     </c:when>
                     <c:when test="${WED3.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
            	<c:choose>
                     <c:when test="${THU3.getTENMH() != null}">
                       	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${THU3.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${THU3.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 </td>
                     </c:when>
                     <c:when test="${THU3.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
            	<c:choose>
                     <c:when test="${FRI3.getTENMH() != null}">
                       	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${FRI3.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${FRI3.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 </td>
                     </c:when>
                     <c:when test="${FRI3.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
            	<c:choose>
                     <c:when test="${SAT3.getTENMH() != null}">
                       	<td  rowspan="4" style="background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;">
                            <table style='text-align:left;width:90px;cursor:pointer' class='textTable'>
                                <tr>
                                    <td width='90px'>
                                        <span style='color:Teal'>${SAT3.getTENMH()}</span>

                                    </td>
                                </tr>
                                <tr>
                                    <td width='90px'>
                                        <span style='font-style:italic; color:gray'>Phòng:</span>
                                        <span style='color:Teal'>${SAT3.getMAPHONG()}</span>

                                    </td>
                                </tr>
                    		</table>
           				 </td>
                     </c:when>
                     <c:when test="${SAT3.getTENMH() == null}">
                        		<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                	 </c:when>
                </c:choose>
            <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
            <td title="Tiết 7"  style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 7</td>
            </tr>
            <tr>
                <td title="Tiết 8" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 8</td>
                <c:forEach begin="1" end="${7-chieu}">
                	<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                </c:forEach>
                <td title="Tiết 8" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 8</td>
            </tr>
            <tr>
                <td title="Tiết 9" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 9</td>
                <c:forEach begin="1" end="${7-chieu}">
                	<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                </c:forEach>
                <td title="Tiết 9" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 9</td>
            </tr>
            <tr>
                <td title="Tiết 10" style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;"> Tiết 10</td>
                <c:forEach begin="1" end="${7-chieu}">
                	<td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                </c:forEach>
                <td title="Tiết 10"  style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">Tiết 10</td>
            </tr>
            <tr>
                <td title="Tiết 11" 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">
                    Tiết 11</td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td title="Tiết 11" 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">
                    Tiết 11</td>
            </tr>
            <tr>
                <td title="Tiết 12" 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">
                    Tiết 12</td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;"></td>
                <td title="Tiết 12" 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;text-align: center;">
                    Tiết 12</td>
            </tr>
            <tr >
                <td style="border-color:Gray;border-width:1px;border-style:solid;height:22px;"></td>
                <td 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;text-align: center;">
                    THỨ HAI</td>
                <td 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;text-align: center;">
                    THỨ BA</td>
                <td 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;text-align: center;">
                    THỨ TƯ</td>
                <td 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;text-align: center;">
                    THỨ NĂM</td>
                <td 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;text-align: center;">
                    THỨ SÁU</td>
                <td 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;text-align: center;">
                    THỨ BẢY</td>
                <td 
                    style="color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;text-align: center;">
                    CHỦ NHẬT</td>
            </tr>
            </tbody>
            </table>
            <table style="width: 100%; text-align: left">
                <tr>
                    <td  width="20px">
                        <div style="width: 15px; height: 15px; background-color: YellowGreen">
                        </div>
                    </td>
                    <td>
                        <span id="ctl00_ContentPlaceHolder1_ctl00_lblmontrung" class="Label">Môn học chỉ trùng một vài
                            tiết</span>
                    </td>
                    <td >
                        <div style="text-align: left">
                            <input type="submit" name="ctl00$ContentPlaceHolder1$ctl00$btnDt" value="Tuần Đầu"
                                id="ctl00_ContentPlaceHolder1_ctl00_btnDt" class="DefaultButton" />
                            <input type="submit" name="ctl00$ContentPlaceHolder1$ctl00$btnTrangTruoc" value="Tuần Trước"
                                id="ctl00_ContentPlaceHolder1_ctl00_btnTrangTruoc" class="DefaultButton" />
                            <input type="submit" name="ctl00$ContentPlaceHolder1$ctl00$btnTuanToi" value="Tuần Kế"
                                id="ctl00_ContentPlaceHolder1_ctl00_btnTuanToi" class="DefaultButton" />
                            <input type="submit" name="ctl00$ContentPlaceHolder1$ctl00$btnTuanCuoi" value="Tuần Cuối"
                                id="ctl00_ContentPlaceHolder1_ctl00_btnTuanCuoi" class="DefaultButton" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td width="20px"  class="auto-style1">
                        <div style="width: 15px; height: 15px; background-color: #CCCCFF"></div>
                    </td>
                    <td class="auto-style1">
                        <span id="ctl00_ContentPlaceHolder1_ctl00_lbltrungtatca" class="Label">
                            Môn học trùng tất cả các tiết
                        </span>
                    </td>
                    <td class="auto-style1"></td>
                </tr>

                <tr>
                    <div id="ctl00_ContentPlaceHolder1_ctl00_pnlDienGiaiMauTKBHKCu">

                        <td width="20px" >
                            <div style="width: 15px; height: 15px; background-color: yellow"></div>
                        </td>
                        <td>
                            <span id="ctl00_ContentPlaceHolder1_ctl00_Label3" class="Label">Thời khóa biểu học kỳ
                                cũ</span>
                        </td>
                        <td></td>

                    </div>
                </tr>

                <tr>
                    <div id="ctl00_ContentPlaceHolder1_ctl00_pnlDienGiaiNghiDay">

                        <td width="20px" >
                            <div style="width: 15px; height: 15px; background-color: lightpink"></div>
                        </td>
                        <td>
                            <span id="ctl00_ContentPlaceHolder1_ctl00_Label7" class="Label">Giảng viên đã đăng ký nghỉ
                                dạy</span>
                        </td>
                        <td></td>

                    </div>
                </tr>

                <tr>
                    <td colspan="3">
                        <span id="ctl00_ContentPlaceHolder1_ctl00_lblMonHocKhongXepTKB" class="Label"
                            style="color:Red;font-size:Medium;font-weight:bold;"></span>
                    </td>
                </tr>
            </table>
        </div>

    </main><!-- /.container -->

 	<script type="text/javascript">
 		console.log("dau")
 		function resetWeek(){
 			let sl = document.querySelector("#select-week");
 			sl.textContent="";
 			for(let i=0;i<15;i++){
 				let d = new Date(1640538000000);
 				let op = document.createElement("option");
 				op.setAttribute("value",i+1)
 				console.log(7*i)
 				op.innerText = "Tuần "+(20+i+1)+"[Từ "+new Date(d.getTime()+604800*i*1000).toLocaleDateString("en-US")+"--Đến "+new Date(d.getTime()+604800*(i+1)*1000).toLocaleDateString("en-US")+ "]";
 				sl.append(op);
 			}
 		}
 		window.onload = ()=>{
 			resetWeek()
 		}
 		console.log("cuoi")
 	</script>


</body>

</html>