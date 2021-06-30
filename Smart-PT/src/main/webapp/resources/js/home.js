/**
 *  stretching_home.js
 */
 
 /*
 $(document).ready(function() {	
*/

console.log("home.js loaded");
import {voiceRecord} from './voiceRecord.js'

$(function() {	
	window.onload = function() {
		// event.preventDefault();
		console.log("window loaded");
		$.ajax({
                url:"welcome",
                // dataType:'json',
                type:'GET',
                data:{'voice':$('#voice').val()},
                success:function(result){
                	//alert("succeed")
	                $('audio').prop("src", '/ai/' + result);
				},
				error:function(e){
					alert("에러 발생 : " + e);
				}			
                    	  
        });
	} // window onload end
		
	
	
	// audio 재생 끝나고 자동 voiceRecord 시작
	var aud = document.getElementById("aud");
	aud.onended = function(e){
		const audio = document.createElement('audio');
        const audioCtx = new(window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의

        if (navigator.mediaDevices) {
            var constraints = {
                audio: true
            }
            let chunks = [];

            navigator.mediaDevices.getUserMedia(constraints)
                .then(stream => {
                    const  mediaRecorder = new MediaRecorder(stream);
                        mediaRecorder.start();
                        console.log("start recording")
                        window.setTimeout(event => {
			                mediaRecorder.stop();
			                for (const track of stream.getTracks()) {
			                    track.stop();
			                }
			                console.log("stop recording")
			            	}, 4000);            
                    	

                    mediaRecorder.onstop = e => {
                        //chunks에 저장된 녹음 데이터를 audio 양식으로 설정
                        audio.controls = true;
                        const blob = new Blob(chunks, {
                            'type': 'audio/mp3 codecs=opus'
                        }); 
                        
                        
                        // Blob data handling added
                        var reader = new FileReader();
                        var base64data;
                        
                        reader.readAsDataURL(blob);
                        reader.onloadend = function() {
							base64data = reader.result;
							/*console.log(base64data);
							console.log("let's go!");*/
							$.ajax({
								url: "/SmartPT/record/blob",
								type: "POST",
								
								data: {"base64data": base64data},
								
								success: function(result) {
									//alert("success!!!");
									console.log(result);
									
									console.log("directly STT");
									$.ajax({
										url: "/SmartPT/API/SpeechToText", // for local
										//url: "/Smart-PT2/API/SppechToText", // for remote server
										type: 'POST',
						
										dataType: 'json',
										data: { 'language': $('#language').val() },
										success: function(result) {
											//alert("result : " + result.text);
											//$('#resultDiv').text(result.text);
						
											if (result.text.includes('스트레칭')) {
												console.log("스트레칭으로 넘어갑니다")
												console.log(result.text)
												$('#stretching').click();
											} else if (result.text.includes('근력')) {
												console.log("근력 강화 운동으로 넘어갑니다")
												console.log(result.text)
												$('#strenghtening').click();
											} else {
												console.log('error')
											}
										},
										error: function(e) {
											alert("에러 발생 : " + e);
										}
									}); // ajax end
								},
								error: function(e) {
									alert("에러 발생 : " + e);
								}
							});
						};
						// Blob data handling end
						
					}//mediaRecorder.onstop

					//녹음 시작시킨 상태가 되면 chunks에 녹음 데이터를 저장하라 
					mediaRecorder.ondataavailable = e => {
						chunks.push(e.data)
					}

				})
				.catch(err => {
					console.log('The following error occurred: ' + err)
				})
		}
	}

}); //$(function() 끝