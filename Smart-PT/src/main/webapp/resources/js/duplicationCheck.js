/*아이디 중복 확인*/
function dupId(){
			var userId = $("#id").val()
	      	var userInfo = {id:userId};
	  		console.log(userInfo.id);
	  	$.ajax({
	  	    type:"GET",
	        url:"${contextPath}/dup/checkId.do",
	        contentType: "application/json",
	        data :{"userId": userId},
	      success:function (data,textStatus){
	    	  var obj = JSON.parse(data);
	    	  if(obj.result == false){
	          	alert("사용 가능한 아이디 입니다.");}
	    	  else{
	    		alert("사용 불가능한 아이디 입니다.");
	    	  }
	      },
	      error:function(data,textStatus){
	        alert(data+"에러가 발생했습니다."+textStatus);
	      },
	      complete:function(data,textStatus){
	      }
	   });  //end ajax	

	   }