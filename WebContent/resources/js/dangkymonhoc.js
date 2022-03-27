 
	var listSub = document.querySelectorAll(".subject-item")
	for(let i of listSub){
		let chkBox = i.children[0].children[0];
		chkBox.onclick = ()=>{
			if(chkBox.checked==true) {
				console.log("kk")
			}
		}
	}
	
	
	document.querySelector("#chkBoxSelectAll").onclick = ()=>{
		let mLi = document.querySelectorAll(".chkBoxSelectItem")
		for(let i of mLi){
			i.checked=true;
		}
	}
	function onchangeSelect(){
		document.querySelector("#getInfor").innerText = document.querySelector("#main-form").value
		
	}
	document.querySelector("button").onclick = () => { location.reload();console.log("button"); }

	
	let tr = document.createElement("tr");
	tr.appendChild(document.createElement("<td>hello world</td>"))