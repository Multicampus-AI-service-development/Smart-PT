/**
 *  voiceRecord.js
 */


$(function() {
	console.log("voiceRecord.js loaded");
	//const record = document.getElementById("record");
	const stop = document.getElementById("stop");
	const soundClips = document.getElementById("sound-clips");

	const audioCtx = new (window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의

	if (navigator.mediaDevices) {
		var constraints = {
			audio: true
		}
		let chunks = [];

		navigator.mediaDevices.getUserMedia(constraints)
			.then(stream => {
				const mediaRecorder = new MediaRecorder(stream);

				/*record.onclick = () => {
					mediaRecorder.start();*/
					/*record.style.background = "#D4F4FA";
					record.style.color = "black";*/

					/*window.setTimeout(event => {
						mediaRecorder.stop();
						
						for (const track of stream.getTracks()) {
							track.stop();
						}
						
						console.log("end")
					}, 7000);
				} // record onclick end*/
				
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
					a.href = audio.src;
					//blob:http://localhost:8011/6377d19d-2ca8-49b1-a37f-068d602ceb60    
					a.href = audio.src;
					a.download = clipName;
					//a.innerHTML = "DOWN"
					a.click(); // 다운로드 폴더에 저장하도록 클릭 이벤트 발생						
				}//mediaRecorder.onstop

				//녹음 시작시킨 상태가 되면 chunks에 녹음 데이터를 저장하라 
				mediaRecorder.ondataavailable = e => {
					chunks.push(e.data)
				}

			}) // navigator.mediaDevices.getUserMedia(constraints) then end
			.catch(err => {
				console.log('The following error occurred: ' + err)
			}) // navigator.mediaDevices.getUserMedia(constraints) catch end
	} // if (navigator.mediaDevices) end

	/*
		// 서버에 업로드 
	function fileUpload(blob){
	// 파일 업로드 부분 추가
	var formData = new FormData("");
	formData.append('c:/Users/wo779/Downloads/voiceMsg.mp3', blob);
	*/


	/////////////////////////////////////////	

	// audio 재생 끝나고 자동 voiceRecord 시작
	var aud = document.getElementById("aud");
	aud.onended = function(e) {

		//const record = document.getElementById("record");
		const stop = document.getElementById("stop");
		const soundClips = document.getElementById("sound-clips");

		const audioCtx = new (window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의

		if (navigator.mediaDevices) {
			var constraints = {
				audio: true
			}
			let chunks = [];

			navigator.mediaDevices.getUserMedia(constraints)
				.then(stream => {
					const mediaRecorder = new MediaRecorder(stream);
					mediaRecorder.start();
					console.log("start recording")
					window.setTimeout(event => {
						mediaRecorder.stop();
						for (const track of stream.getTracks()) {
							track.stop();
						}
						console.log("end")
					}, 4000);


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
								},
								error: function(e) {
									alert("에러 발생 : " + e);
								}
							});
						};
						// Blob data handling end
						
						/*chunks = [];
						const audioURL = URL.createObjectURL(blob);
						audio.src = audioURL;
						a.href = audio.src;
						//blob:http://localhost:8011/6377d19d-2ca8-49b1-a37f-068d602ceb60    
						a.href = audio.src;
						a.download = clipName;
						//a.innerHTML = "DOWN"
						a.style.display = 'none';
						a.click(); // 다운로드 폴더에 저장하도록 클릭 이벤트 발생*/		
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

		// 3초 후 STT API 동작
		window.setTimeout(event => {
			console.log("event occured");
			$('#resultDiv').html('');
			$.ajax({
				url: "/SmartPT/API/SpeechToText", // for local
				//url: "/Smart-PT2/API/SppechToText", // for remote server
				type: 'POST',

				dataType: 'json',
				data: { 'language': $('#language').val() },
				success: function(result) {
					//alert("result : " + result.text);
					$('#resultDiv').text(result.text);

					if (result.text.includes('다음')) {
						console.log("다음으로 넘어갑니다")
						console.log(result.text)
						$('#next').click();
					} else {
						console.log('error')
					}
				},
				error: function(e) {
					alert("에러 발생 : " + e);
				}
			}); // ajax end
			console.log("end")
		}, 5000); // window setTimeout end
	} // aud onended end

	/////////////////////////////////////////////////////////////

}); //$(function() 끝