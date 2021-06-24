/**
 *  voiceRecord.js
 */
 
 /*
 $(document).ready(function() {	
*/

$(function() {
	
		const record = document.getElementById("record");
        const stop = document.getElementById("stop");
        const soundClips = document.getElementById("sound-clips");

        const audioCtx = new(window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의

        if (navigator.mediaDevices) {
            var constraints = {
                audio: true
            }
             let chunks = [];

            navigator.mediaDevices.getUserMedia(constraints)
                .then(stream => {
                    const  mediaRecorder = new MediaRecorder(stream);
              
                    record.onclick = () => {
                        mediaRecorder.start();
                        record.style.background = "#D4F4FA";
                        record.style.color = "black";
                        
                        window.setTimeout(event => {
                			// console.log("time is over.");
			                mediaRecorder.stop();
			                // console.log(mediaRecorder.state);
			                // console.log("recorder stopped");
			                // stop getUserMedia stream - this way the cam and mic gets released.
			                for (const track of stream.getTracks()) {
			                    track.stop();
			                }
			                //videoEl.srcObject = null;
			                // console.log("stream stopped.");
			                console.log("end")
			            }, 7000);
			            
			        
                        
                        
                    }
/**
                    stop.onclick = () => {//정지 버튼 클릭 시
                        mediaRecorder.stop();//녹음 정지                       
                        record.style.background = "";
                        record.style.color = "";
                    }
   */            
                    mediaRecorder.onstop = e => {
                        
                        const clipName = "voiceMsg";  // 파일명 : 확장자 안 붙었음
						//태그 3개 생성
                        const clipContainer = document.createElement('article');                     
                        const audio = document.createElement('audio');
                        const a = document.createElement('a');
						// 속성/ 컨텐츠 설정
                        clipContainer.classList.add('clip');
                        audio.setAttribute('controls', '');                        
                        clipContainer.appendChild(audio);
                       
                        clipContainer.appendChild(a);
                        soundClips.appendChild(clipContainer);                        
						
                        //chunks에 저장된 녹음 데이터를 audio 양식으로 설정
                        audio.controls = true;
                        const blob = new Blob(chunks, {
                            'type': 'audio/mp3 codecs=opus'
                        }); 
                        
                        chunks = [];
                        const audioURL = URL.createObjectURL(blob);
                        audio.src = audioURL;
                        a.href=audio.src;
                       //blob:http://localhost:8011/6377d19d-2ca8-49b1-a37f-068d602ceb60    
                        a.href=audio.src;                     
                        a.download = clipName;                      
                       //a.innerHTML = "DOWN"
						a.click(); // 다운로드 폴더에 저장하도록 클릭 이벤트 발생						
                    }//mediaRecorder.onstop
						
						
						/*
						// 1초 대기 후 업로드
						setTimeout(function(){
							fileUpload(clipName + ".mp3"); //파일명
						}, 1000);
						*/

                    //녹음 시작시킨 상태가 되면 chunks에 녹음 데이터를 저장하라 
                    mediaRecorder.ondataavailable = e => {
                        chunks.push(e.data)
                    }
                    
                })
                .catch(err => {
                    console.log('The following error occurred: ' + err)
                })
        }           
	
		/*
			// 서버에 업로드 
		function fileUpload(blob){
		// 파일 업로드 부분 추가
		var formData = new FormData("");
		formData.append('c:/Users/wo779/Downloads/voiceMsg.mp3', blob);
		*/
	
	
		// audio 재생 끝나고 자동 voiceRecord 시작
		var audio = document.getElementById("audio");
		audio.onended = function(e){
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
			            }, 7000);
                    
                        })}
                        }
		
	
	
	
	
		$('#record').click( function() {
			$('#resultDiv').html('');
                $.ajax({
                    url:"/spring-ai/API/SpeechToText",
                    dataType:'json',
                    type:'POST',
                    data:{'language':$('#language').val()},
                    success:function(result){
                        // result = JSON.parse(result);			// 콘솔에선 성공이고, 웹에선 ?? ??로 나오는 문제 해결하기.
                        										// 파싱문제인가??? -> X, JSON한글깨짐문제 - @RequestMapping의 produces 속성을 사용해 UTF-8 인코딩을 해서 다시 클라이언트로 내보내주면 한글이 정상적으로 나온다.  
                        										// (녹음 파일 저장 위치(c:/ai) 바꾸고, 삭제하는것 구현, 시작하기 버튼 누르면 7초 뒤에 stt작동하게 만들기)
                        alert("result : " + result.text);
                        $('#resultDiv').text(result.text);
                        
                        if (result.text.includes('다음')) {
				              console.log("다음으로 넘어갑니다")
				              console.log(result.text)
				              } else {
				              console.log('error')
				              }
			           
                        
                        },
                        error:function(e){
						alert("에러 발생 : " + e);
						}	  
                  });
            
       
		

		
		
		/*
		$('#sttForm').on('submit', function(event){
		event.preventDefault(); //submit 후에  reload 안 되게
		formData = new FormData($('#sttForm')[0]);
				
		$.ajax({
			type:"post",
			enctype:"multipart/form-data",
			contentType:"application/json; charset:UTF-8",
			url:"clovaSTT",
			data:formData,
			processData:false, //필수
			contentType:false, //필수
			success:function(result){
				alert(result);
				data = JSON.parse(result);
				$('#resultDiv').text(data.text);
			},
			error:function(e){
				alert("에러 발생 : " + e);
			}			
		});
		*/
		
	})
	
}); //$(function() 끝