/**
 * 
 */

function login(contextPath) {

	var userInfo = {
		id: $("#id").val(),
		pwd: $("#pwd").val()
	};
	console.log(userInfo);
	$.ajax({
		type: "POST",
		url: contextPath + "/user/signIn.do",
		contentType: "application/json",
		data: JSON.stringify(userInfo),
		success: function(data, textStatus) {
			var obj = JSON.parse(data);
			if (obj.result == true) {
				alert("정상로그인");
				window.open(contextPath + "/home", "_self")
			}
			else {
				alert("아이디 혹은 비밀번호를 확인하세요.");
			}
		},
		error: function(data, textStatus) {
			alert("에러가 발생했습니다.");
		},
		complete: function(data, textStatus) {
		}
	});  //end ajax	

}


