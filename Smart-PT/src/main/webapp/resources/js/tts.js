/**
 * tts.js
 */
 
 $(function(){
	$('#ttsForm').on('submit', function(event){
		event.preventDefault(); //submit 후에  reload 안 되게
		// var formData = new FormData($('#ttsForm')[0]);	
		
		let sendData = "username="+$('input[name=username]').val();
		
		$.ajax({
			type:"post",
			//enctype:"multipart/form-data",
			url:"clovaTTS",
			//data:formData,
			data:sendData,
			//processData:false, //필수
			//contentType:false, //필수
			success:function(result){
				//$('audio').prop("src", '/ai/' + result);
				$('#resultDiv').text(result);
			},
			error:function(e){
				alert("에러 발생 : " + e);
			}			
		});
	});
	
});