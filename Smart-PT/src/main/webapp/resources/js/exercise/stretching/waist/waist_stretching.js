/**
 * waist_stretching.js
 */


$(function () {
	console.log("waist_stretching js loaded");
	
	$('div#exercise_list').on('click', startExercise);
	
	let ex_steps = null;
	function startExercise(event) {
		console.log("startExercise");
		event.preventDefault();
		let krExTitle = event.target.getAttribute('krExTitle');
		
		$.ajax({
			 url: "/Smart-PT2/exercise/get-one", // for local
			//url: "/Smart-PT/exercise/get-one", // for remote server
			type: "POST",
			
			data: {"krExTitle": krExTitle},
			
			success: function(steps) {
				$('#exercise_list').attr('hidden', "hidden"); // 운동 목록 숨기기
				
				ex_steps = steps; // 선택된 운동으로 진행 과정 초기화
				$('#activity-area-h2').text(ex_steps[0].step); // 선택된 운동으로 activity area 초기화
				stepTTS(event);				
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	} // startExercise end
	
	function stepTTS(event) {
		event.preventDefault();
		$.ajax({
			url: "/Smart-PT2/API/stepTTS",
			type: "POST",
			
			data: {"stepMsg": ex_steps[Number($('#step').val() ) - 1].step},
			/*contentType: false,*/

			success: function(stepTTSfile) {
				//console.log("stepTTS success");
				$('audio').prop("src", '/ai/' + stepTTSfile);
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}; // stepTTS end
	
	$('#next').on('click', function(event) {
		//console.log("next clicked");
		event.preventDefault();
		$.ajax({
			success: function() {
				//console.log("next step");
				
				var step = Number($('#step').val());
				$('#step').prop('value', step + 1); // Phase(step) 1 증가
				console.log(ex_steps[step]);
				/*$('#activity-area').text(ex_steps[step]);*/
				$('#activity-area-h2').text(ex_steps[step].step); // 바뀐 phase(step)로 현재 진행되는 step 변경
				stepTTS(event);

				if (step === ex_steps.length - 1) { // 마지막 step 하드코딩 상태
					console.log("step이 끝났습니다.");
					$('input#next').attr('value', "운동 종료");
					$('input#next').attr('id', "end");
					$('input#next').attr('hidden', "hidden");
					$('input#next').attr('disabled', "disabled");
					// disabled 하지 않으면 id next인 input이 id end로 바뀌더라도 id next로 인식되어 클릭되는 버그
				}
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}) // #next on click end

	$(document).on('click', '#end', function() { // 동적 이벤트 바인딩 위해 $(document) 활용
		console.log("end clicked");
		location.replace("/SmartPT/exercise/result"); // 결과 페이지로 이동
	}) // #end on click end
	
	
	/* *//* *//* *//* *//* *//* *//* *//* */
	// Record-STT test //
	
	$('audio').on('ended', function() {
		//alert("ended");
		
		
	}) // audio on ended end
	
	
	
}); // function() end