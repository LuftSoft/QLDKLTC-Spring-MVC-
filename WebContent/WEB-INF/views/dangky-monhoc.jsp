<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css?version=51'/>"/>
<title>Đăng ký môn học</title>
<style>
	
	body{
		position:relative;
		height: 100%;
		padding-bottom: 200px;
		margin-bottom: 200px;
	}
	.main-contain-table{
    	/*position: relative;
    	transform: translateY(26%);
		padding: 70px 80px;
    	background-color: #fff;
    	margin-bottom: 100px;*/
    	top:0;
    	position: relative;
    	transform: translateY(15%);
    	padding: 70px 80px;
    	background-color: #fff;
    	text-align: center;
	}
	table th,table td{
		padding: 2px 3px;
	}
	td{
		font-size: 15px;
	}
	.gray{
		background-color: #ccc;
	}
</style>
</head>
<body class="text-center" style="background: -webkit-linear-gradient(left,#a445b2,#fa4299) ">
<h1></h1>
<h1></h1>
<%@ include file="/WEB-INF/views/include/navbar.jsp"%>

 <main role="main" class="main-container container main-contain-table">
<div class="row">
    <div class="col mb-2" style="text-align: left;">
      <label for="">Lọc theo môn học:</label>
      <input type="text"  >
      <button style="width: 100px; background-color: cyan;border:2px solid cyan" >Lọc</button>
    </div>
</div>
<div class="row">
    <div class="col"  style="text-align: left;">
        <label for="">
            Lọc theo điều kiện:</label>
            <select class="form-select" aria-label="Default select example" >
                <option selected>Lớp</option>
                <option value="1">Khoa</option>
                <option value="2">Ngành</option>
              </select>
             	<select class="form-select" aria-label="Default select example" name="main-form"
              id="main-form">
                <option  value="IT">ĐHCQ-Ngành Công nghệ thông tin-2019-1</option>
                <option value="MU">ĐHCQ-Ngành Công nghệ đa phương tiện-2019-1</option>
                <option value="ST">ĐHCQ-Ngành An toàn thông tin-2019-1</option>
                <option value="AC">ĐHCQ-NgànhKế toán-2019-1</option>
                <option value="QT">ĐHCQ-Quảng trị kinh doanh-2019-1</option>
                <option value="VT">ĐHCQ-Ngành Điện tử viễn thông-2019-1</option>
                <option value="MK">ĐHCQ-Ngành Marketing-2019-1</option>
              </select>
              <input type="text"  >
           
              		<button style="width: 100px;background-color: cyan;border:2px solid cyan" onclick="filterMainForm()">Lọc</button>
              
    </div>         
</div>
<div class="row mt-2">
  <div style="padding-left: 15px">
    <table border="1" style="border-collapse: collapse;">
    <form:form>
        <tr style="background-color: rgb(126, 126, 245); color: rgb(252, 252, 252);" >
            <td></td>
            <td>Mã MH</td>
            <td>Tên môn học</td>
            <td>NMH</td>
            <td>TTH</td>
            <td>STC</td>
            <td>STCHP</td>
            <td>Mã lớp</td>
            <td>Sĩ số</td>
            <td>CL</td>
            <td>TH</td>
            <td>Thứ</td>
            <td>Tiết BD</td>
            <td>ST</td>
            <td>Phòng</td>
            <td>TG học</td>
        </tr>
       <c:forEach var="ds" items="${dsltc}">
       	  <tr class="subject-item ${ds.getMAMH()}">
            <td><input type="checkbox" ></td>
            <td>${ds.getMAMH()}</td>
            <td>${ds.getTENMH()}</td>
            <td>${ds.getNHOM()}</td>
            <td>${ds.getNHOM()}</td>
            <td>${ds.getSOTC()}</td>
            <td>${ds.getSOTC()}</td>
            <td>D19CQCN02-N</td>
            <td>${ds.getSVTOITHIEU()}</td>
            <td>Con lai</td>
            <td>
            	<c:choose>
            		<c:when test="${ds.getSOTTH()>0}">*</c:when>
            	</c:choose>
            </td>
            <td>${ds.getTHU()}</td>
            <td>
            	<c:choose>
            		<c:when test="${ds.getCA()==1 }">1</c:when>
            		<c:when test="${ds.getCA()==2 }">5</c:when>
            		<c:when test="${ds.getCA()==3 }">7</c:when>
            	</c:choose>
            </td>
            <td>
            	<c:choose>
            		<c:when test="${ds.getCA()==1}">4</c:when>
            		<c:when test="${ds.getCA()==2}">2</c:when>
            		<c:when test="${ds.getCA()==3}">4</c:when>
            	</c:choose>
            </td>
            <td>${ds.getPHONG()}</td>
            <td>${ds.getNGAYBATDAU()} đến ${ds.getNGAYKETTHUC()}</td>
          </tr>
       </c:forEach>
     </form:form>
    </table>
</div>
</div>
<div class="row mt-2">
  	<h6 style="padding-left: 15px;font-weight: 600;">DANH SÁCH MÔN HỌC ĐÃ CHỌN</h6>
    <div style="width: 100%;padding-left: 15px;margin: 10px 0;">
    	<form action="${pageContext.request.contextPath}/dang-ky-mon-hoc-save.htm" style="display: inline-block;">
    		<button style="margin-right: 10px;padding: 0 7px" class="btn-success btnSave" id="btnSaveInfor" onclick="SaveInfor()">Lưu đăng ký</button>
    	</form>
    	<form action="${pageContext.request.contextPath}/dang-ky-mon-hoc-delete.htm" style="display: inline-block;">
    		<button style="padding: 0 7px;" class="btn-success btnDelete" id="btnDeleteInfor">Xóa</button>
    	</form>
    </div>
    <div style="padding-left: 15px">
        <table border="1" class="mt-2 submit-show">
            <tr style="background-color: rgb(126, 126, 245); color: rgb(252, 252, 252);">
                <td>STT</td>
                <td>Mã MH</td>
                <td>Tên môn học</td>
                <td>NMH</td>
                <td>TTH</td>
                <td>STC</td>
                <td>STCHP</td>
                <td>Hoc phí</td>
                <td>Miễn giảm</td>
                <td>Phải đóng</td>
                <td>Trạng thái môn học</td>
                <td><input type="checkbox" id="chkBoxSelectAll"></td>

            </tr>
           <c:forEach var="dk" items="${dangky}" begin="0" end="${dangky.size()}" varStatus="st">
            	<tr id="${dk.getMAMH()}" class="submit-item">
                	<td>${st.index+1}</td>
                	<td>${dk.getMAMH()}</td>
                	<td>${dk.getTENMH()}</td>
               	 	<td>${dk.getNHOM()}</td>
                	<td></td>
                	<td>${dk.getSTC()}</td>
                	<td>${dk.getSTC()}</td>
                	<td>${dk.getSTC()*480000}</td>
                	<td>0</td>
                	<td>${dk.getSTC()*480000}</td>
                	<td>Đã lưu vào CSDL</td>
                	<td>
                		<input type="checkbox" class="chkBoxSelectItem">
                	</td>
            	</tr>
            </c:forEach>
            <tr>
                <td colspan="5">Tổng cộng</td>
                <td>${stc}</td>
                <td>${stc}</td>
                <td>${tongtien}</td>
                <td>0</td>
                <td>${tongtien}</td>
                <td>Đã lưu vào CSDL</td>
                <td></td>
         
            </tr> 
        </table>
    </div>
</div>
</main> 
<script type="text/javascript">
	function resetHPSTC(hp,stc){
		document.querySelector(".submit-show").children[0].children[document.querySelector(".submit-show").children[0].children.length-1].children[1].innerText=stc;
		document.querySelector(".submit-show").children[0].children[document.querySelector(".submit-show").children[0].children.length-1].children[2].innerText=stc;
		document.querySelector(".submit-show").children[0].children[document.querySelector(".submit-show").children[0].children.length-1].children[3].innerText=hp;
		document.querySelector(".submit-show").children[0].children[document.querySelector(".submit-show").children[0].children.length-1].children[5].innerText=hp;
	}
	function resetAll(){
		for(let i of document.querySelectorAll(".subject-item")){
			let chkBox = i.children[0].children[0];
			if(chkBox.checked==true) {
				
				for(let j of document.querySelectorAll(".subject-item")){
					if(i.children[1].textContent.trim() == j.children[1].textContent.trim()
							&& i.children[3].textContent.trim() != j.children[3].textContent.trim()){
						j.style.backgroundColor = "#eee";
						j.style.color = "#ccc";
						j.children[0].children[0].disabled=true;
					}
				}
			}
			else{
				for(let j of document.querySelectorAll(".subject-item")){
					if(i.children[1].textContent.trim() == j.children[1].textContent.trim()
							&& i.children[3].textContent.trim() != j.children[3].textContent.trim()){
						j.style.backgroundColor = "#fff";
						j.style.color = "#000";
						j.children[0].children[0].disabled=false;
					}
				}
			}
		}
	}
	console.log("hello top")
	var subLength = document.querySelectorAll(".subject-item").length;
	var listSubmit = document.querySelectorAll(".submit-item")
	var listSub = document.querySelectorAll(".subject-item")
	for(let i of listSub){
		let chkBox = i.children[0].children[0];
		chkBox.onclick = ()=>{
			//thêm các môn học đã chọn vào list
			if(chkBox.checked==true) {
				let tongtien=0,stc=0;
				
				let k = document.querySelectorAll(".submit-item").length;
				let tr = document.createElement("tr");
				tr.classList.add("submit-item")
				let td1 = document.createElement("td");
					td1.innerText=document.querySelector(".submit-show").children[0].children.length-1;tr.appendChild(td1);
				let td2 = document.createElement("td");
					td2.innerText = i.children[1].textContent;tr.appendChild(td2);
				let td3 = document.createElement("td");
					td3.innerText = i.children[2].textContent;tr.appendChild(td3);
				let td4 = document.createElement("td");
					td4.innerText = i.children[3].textContent;tr.appendChild(td4);
				let td5 = document.createElement("td");
					tr.appendChild(td5);
				let td6 = document.createElement("td");
					td6.innerText = i.children[5].textContent;tr.appendChild(td6);
				let td7 = document.createElement("td");
					td7.innerText=td6.textContent;tr.appendChild(td7);
				let td8 = document.createElement("td");
					td8.innerText=parseInt(i.children[5].textContent)*480000;tr.appendChild(td8);
				let td9 = document.createElement("td");
					td9.innerText= "0";tr.appendChild(td9);
				let td10 = document.createElement("td");
					td10.innerText =parseInt(i.children[5].textContent)*480000;tr.appendChild(td10);
				let td11 = document.createElement("td");
					td11.innerText = "Chưa lưu vào CSDL";tr.appendChild(td11);
				let td111 = document.createElement("td");
				let td12 = document.createElement("input");
					td12.classList.add("chkBoxSelectItem");
					td12.setAttribute("type","checkbox");td111.appendChild(td12);tr.appendChild(td111);
				
					document.querySelector(".submit-show").appendChild(tr);
					document.querySelector(".submit-show").children[0].insertBefore(tr,document.querySelector(".submit-show").children[0].children[document.querySelector(".submit-show").children[0].children.length-1]);
				for(let k of document.querySelectorAll(".submit-item")){
					tongtien+=parseInt(k.children[7].textContent);
					stc+=parseInt(k.children[5].textContent);
				}
				resetAll();
				resetHPSTC(tongtien,stc);
			}
			//loại bỏ các môn học hủy chọn
			
			else{
				let tongtien=0,stc=0;
				for(let k of document.querySelectorAll(".submit-item")){
					if(k.children[1].textContent.trim()==i.children[1].textContent.trim() && k.children[3].textContent.trim()==i.children[3].textContent.trim()){
						k.remove();
					}
				}
				for(let j=0;j<document.querySelectorAll(".submit-item").length;j++){
					document.querySelectorAll(".submit-item")[j].children[0].innerText = j+1;
					tongtien+=parseInt(document.querySelectorAll(".submit-item")[j].children[7].textContent)
					stc+=parseInt(document.querySelectorAll(".submit-item")[j].children[5].textContent)
				}
				resetHPSTC(tongtien,stc);
				i.style.backgroundColor="#fff";
				resetAll();
			}
		}
	}
	for(let i of listSub){
		for(let j of listSubmit){
			if(i.classList[1].trim()==j.getAttribute("id").trim() && i.children[3].textContent.trim()==j.children[3].textContent.trim()){
				if(i.children[0].children[0].checked==false) i.children[0].children[0].checked=true;
				i.style.backgroundColor="#ccc";
			}
		}
	}

	let chkBoxAll =document.querySelector("#chkBoxSelectAll");
	chkBoxAll.onclick = ()=>{
		if(chkBoxAll.checked==true){
			let mLi = document.querySelectorAll(".chkBoxSelectItem")
			for(let i of mLi){
				i.checked=true;
			}
		}
		else{
			let mLi = document.querySelectorAll(".chkBoxSelectItem")
			for(let i of mLi){
				i.checked=false;
			}
		}
		
	}
	function deleCacheCookie(){
		let  a = Array.from(document.cookie.split(';'));
		if(a.length>1){
			for(let j=1;j<a.length;j++){
				document.cookie = a[j] + ";expires=Thu, 01 Jan 1970 00:00:01 GMT";
			}
		}
	}
	//LOC CAC NGANH 
	function filterMainForm(){
		document.querySelector("#main-form").value;
	}
	function SaveInfor(){
		deleCacheCookie();
		if(document.querySelector('.submit-show').children[0].children.length>0){
            for(let i=1;i<document.querySelector('.submit-show').children[0].children.length-1;i++){
			if(document.querySelector('.submit-show').children[0].children[i].children[11].children[0].checked==true){
				document.cookie = document.querySelector('.submit-show').children[0].children[i].children[1].textContent.trim() +"="+ document.querySelector('.submit-show').children[0].children[i].children[3].textContent.trim()
			
    		}
        }
	}
		}
	btnDeleteInfor.onclick = ()=>{
		deleCacheCookie();
		if(document.querySelector('.submit-show').children[0].children.length>0){
            for(let i=1;i<document.querySelector('.submit-show').children[0].children.length-1;i++){
			if(document.querySelector('.submit-show').children[0].children[i].children[11].children[0].checked==true){
				document.cookie = document.querySelector('.submit-show').children[0].children[i].children[1].textContent.trim() +"="+ document.querySelector('.submit-show').children[0].children[i].children[3].textContent.trim()
			
    		}
        }
	}
	}
	window.onload = ()=>{
		resetAll();
	}
	document.querySelector("button").onclick = () => { location.reload();console.log("button"); }
	console.log("hello bottom")
</script>
      
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
