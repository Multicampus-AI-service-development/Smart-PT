/**
 * 
 */

console.log("RecordSTT.js loaded");

export function getRecordSTT() {
	console.log("getRecordSTT called");
	console.log("who called? : " + window.location.pathname);
	$.ajax({
		url: "/SmartPT/API/SpeechToText", // for local
		//url: "/Smart-PT2/API/SppechToText", // for remote server
		type: 'POST',

		dataType: 'json',
		data: { 'language': $('#language').val() },
		success: function(result) {
			//alert("result : " + result.text);
			$('#resultDiv').text(result.text);

			// home.jsp
			if (result.text.includes('스트레칭')) {
				console.log("스트레칭으로 넘어갑니다")
				console.log(result.text)
				$('#stretching').click();
			} else if (result.text.includes('근력')) {
				console.log("근력 강화 운동으로 넘어갑니다")
				console.log(result.text)
				$('#strenghtening').click();
			}
			// stretching_home.jsp
			else if (result.text.includes('목')) {
				console.log("목 스트레칭으로 넘어갑니다")
				console.log(result.text)
				$('#neck').click();
			} else if (result.text.includes('허리')) {
				console.log("허리 스트레칭으로 넘어갑니다")
				console.log(result.text)
				$('#waist').click();
			} else if (result.text.includes('골반')) {
				console.log("골반 스트레칭으로 넘어갑니다")
				console.log(result.text)
				$('#pelvis').click();
			}
			// exercise pages
			else if (result.text.includes('다음')) {
				console.log("다음으로 넘어갑니다")
				console.log(result.text)
				$('button#next').click();
			}
			// waist_stretching.jsp
			else if (result.text.includes('차일드')) {
				console.log("스트레칭 - 차일드 포즈")
				console.log(result.text)
				$('#child-pose').click();
			} else if (result.text.includes('아이소')) {
				console.log("스트레칭 - 아이소메트릭 로우")
				console.log(result.text)
				$('#Isometric-rows').click();
			} else {
				console.log('여기 에러 error')
			}
		},
		error: function(e) {
			alert("에러 발생 : " + e);
		}
	}); // ajax end
} // export function getRecordSTT()