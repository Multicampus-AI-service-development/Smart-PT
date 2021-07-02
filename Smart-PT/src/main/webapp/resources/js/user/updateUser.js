/**
 * 
 */
	function updateUser(edit,contextPath){
		if($("#chpw").val() == "false"){
			alert("비밀번호 확인하세요.");
		}else if($("#chpw").val() == "true"){
		
	      	var userInfo = {id:$("#id").val(),
				pwd:$("#"+edit+"pwd").val(),
				name:$("#name").val(),
				email:$("#email").val(),
				age:$("#age").val(),
				nickname:$("#nickname").val(),
				tel:$("#tel").val(),
				addr:$("#addr").val(),
				cm:$("#cm").val(),
				kg:$("#kg").val()
				};
	  		console.log(userInfo);
	  	$.ajax({
	  	    type:"POST",
	        url: contextPath+"/user/edit.do",
	        contentType: "application/json",
	        data :JSON.stringify(userInfo),
	      success:function (data,textStatus){
	    	  var obj = JSON.parse(data);
	    	  if(obj.result == true){
	          	alert("수정 완료");
	          	window.open(contextPath+"/user/login","_self")
	    	  }
	    	  else{
	    		alert("수정 불가");
	    	  }
	      },
	      error:function(data,textStatus){
	        alert("에러가 발생했습니다.");
	      },
	      complete:function(data,textStatus){
	      }
	   });  //end ajax	
		}
	   }
	
	
	function idpwcheck(contextPath){
			//로그인 기능과 같음
	      	var userInfo = {id:$("#id").val(),
				pwd:$("#pwd").val()
				};
	  		console.log(userInfo);
	  	$.ajax({
	  	    type:"POST",
	        url:contextPath+"/user/idpwcheck.do",
	        contentType: "application/json",
	        data :JSON.stringify(userInfo),
	      success:function (data,textStatus){
	    	  var obj = JSON.parse(data);
	    	  if(obj.result == true){
	    		  document.getElementById("idchpw").value="true"
	    		  
	    		alert("확인 완료"+document.getElementById("idchpw").value);
	    		  editUser()
	          	
	    	  }
	    	  else{
	    		  document.getElementById("idchpw").value="false"
	    		  alert("확인 불가");
	    		  editUser()
	    		
	    	  }
	      },
	      error:function(data,textStatus){
	        alert("에러가 발생했습니다.");
	      },
	      complete:function(data,textStatus){
	      }
	   });  //end ajax	
		
	   }
	
	function checkPw(){
		var pw = $("#newpwd").val();
		var chpw = $("#checkpw").val();
		if(pw==chpw){
	    	document.getElementById("chmsg").innerHTML="확인"
			//$("#chpw").setAttribute(value,"true");
	    	document.getElementById("chpw").value="true"
		}else{
	      document.getElementById("chmsg").innerHTML="비밀번호를 확인하세요."
	    	  document.getElementById("chpw").value="false"
		}
	}
	function editUser(contextPath){
		var newpw = $("#newpwd").val();
		
		
		
		if($("#idchpw").val() == "true"){
			alert("들어옴 확인1");
			if(newpw != ""){
				updateUser("new",contextPath)
			}else if(newpw == ""){
				document.getElementById("chpw").value="true"
				updateUser("")	
			}
			
		}else if($("#idchpw").val() == "false"){
			alert("확인해주세요.");
		}
	}
	
	function updatecancel(){
		window.open(contextPath+"/user/myPage","_self")
	}
