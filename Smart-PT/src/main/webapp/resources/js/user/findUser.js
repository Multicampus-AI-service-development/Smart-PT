/**
 * 
 */

function findUserId(contextPath) {
		var userInfo = {
			
			name: $("#name").val(),
			email: $("#email").val(),
			nickname: $("#nickname").val(),
			tel: $("#tel").val(),
			question: $("#question").val(),
			answer: $("#answer").val(),
			addr: $("#addr").val()
		};
		console.log(userInfo);
		$.ajax({
			type: "POST",
			url: contextPath + "/user/findId.do",
			contentType: "application/json",
			data: JSON.stringify(userInfo),
			success: function(data, textStatus) {
				var obj = JSON.parse(data);
				
				if (obj.result == true) {
					alert("찾기 성공"+"\n"+"아이디는 "+obj.id+"입니다.");
					window.open(contextPath + "/user/login", "_self")
				}
				else {
					alert("회원 찾기 불가");
				}
			},
			error: function(data, textStatus) {
				alert("회원 찾기 불가");
			},
			complete: function(data, textStatus) {
			}
		});  //end ajax	
		
}
function findUserPw(contextPath) {
		var userInfo = {
			id:$("#id").val(),
			name: $("#name").val(),
			email: $("#email").val(),
			nickname: $("#nickname").val(),
			tel: $("#tel").val(),
			question: $("#question").val(),
			answer: $("#answer").val(),
			addr: $("#addr").val()
		};
		console.log(userInfo);
		$.ajax({
			type: "POST",
			url: contextPath + "/user/findPw.do",
			contentType: "application/json",
			data: JSON.stringify(userInfo),
			success: function(data, textStatus) {
				var obj = JSON.parse(data);
				
				if (obj.result == true) {
					alert("찾기 성공"+"\n"+"아이디는 "+obj.pw+"입니다.");
					window.open(contextPath + "/user/login", "_self")
				}
				else {
					alert("회원 찾기 불가");
				}
			},
			error: function(data, textStatus) {
				alert("회원 찾기 불가");
			},
			complete: function(data, textStatus) {
			}
		});  //end ajax	
		
}
function findId(contextPath){
 window.open(contextPath+"/user/findId","_self");

}
function findPw(contextPath){
 window.open(contextPath+"/user/findPw","_self");

}
