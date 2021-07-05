/**
 * 
 */

function addUser(contextPath) {
	if ($("#chpw").val() == "false") {
		alert("비밀번호를 확인하세요.");
	} else if ($("#chid").val() == "false") {
		alert("아이디 중복을 확인하세요.");
	} else if ($("#chpw").val() == "true" && $("#chid").val() == "true") {
		var nick = ""
		if($("#nickname").val()==""){
			nick = $("#name").val();
		}else{
			nick = $("#nickname").val();
		}
		var userInfo = {
			id: $("#id").val(),
			pwd: $("#pwd").val(),
			name: $("#name").val(),
			email: $("#email").val(),
			question: $("#question").val(),
			answer: $("#answer").val(),
			age: $("#age").val(),
			nickname: nick,
			tel: $("#tel").val(),
			addr: $("#addr").val(),
			cm: $("#cm").val(),
			kg: $("#kg").val()
		};
		console.log(userInfo);
		$.ajax({
			type: "POST",
			url: contextPath + "/user/add.do",
			contentType: "application/json",
			data: JSON.stringify(userInfo),
			success: function(data, textStatus) {
				var obj = JSON.parse(data);
				if (obj.result == true) {
					alert("가입성공");
					window.open(contextPath + "/user/login", "_self")
				}
				else {
					alert("가입불가");
				}
			},
			error: function(data, textStatus) {
				alert("에러가 발생했습니다.");
			},
			complete: function(data, textStatus) {
			}
		});  //end ajax	
		
	}
}

function dupId(contextPath) {

	var userId = $("#id").val()
	if (userId == "") {
		alert("아이디 작성하세요.");
		document.getElementById("chid").value = "false"
	} else {
		var userInfo = { id: userId };
		console.log(userInfo.id);
		$.ajax({
			type: "GET",
			url: contextPath + "/user/checkId.do",
			contentType: "application/json",
			data: { "userId": userId },
			success: function(data, textStatus) {
				var obj = JSON.parse(data);
				if (obj.result == false) {
					alert("사용 가능한 아이디 입니다.");
					document.getElementById("chid").value = "true"
				}
				else {
					alert("사용 불가능한 아이디 입니다.");
					document.getElementById("chid").value = "false"
				}
			},
			error: function(data, textStatus) {
				alert("에러가 발생했습니다.");
			},
			complete: function(data, textStatus) {
			}
		});  //end ajax	
	}
}

function checkPw() {
	var pw = $("#pwd").val();
	var chpw = $("#checkpw").val();
	if (pw == chpw) {
		document.getElementById("chmsg").innerHTML = "확인"
		//$("#chpw").setAttribute(value,"true");
		document.getElementById("chpw").value = "true"
	} else {
		document.getElementById("chmsg").innerHTML = "비밀번호를 확인하세요."
		document.getElementById("chpw").value = "false"
	}
}
