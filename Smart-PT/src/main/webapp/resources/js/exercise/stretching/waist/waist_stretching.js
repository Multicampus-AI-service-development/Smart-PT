/**
 * waist_stretching.js
 */


$(function () {
	console.log("waist_stretching js loaded");
	let ex_steps = null;

	let setExercise = function(event, steps) {
		ex_steps = steps; // 진행될 운동 steps 초기화
		$('#exercise_list').attr('hidden', "hidden"); // 제공되는 운동 목록 숨기기
		var key = "phase" + Number($('#phase').val());
		console.log(ex_steps.length);
		console.log(ex_steps.length - 1);
		console.log(steps[0]);
		
		$('#activity-area-h2').text(ex_steps[0].step); // activity area에 현재 진행되는 step 출력
		stepTTS(event); // 현재 진행되는 step 음성으로 출력
	}
	
	let stepTTS = function(event) {
		event.preventDefault();
		$.ajax({
			url: "/SmartPT/API/stepTTS",
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
	

	$('#cp-listup').on('click', function(event) {
		//alert("blank clicked");
		event.preventDefault();
		$.ajax({
			url: "waist/show-all",
			type: "POST",

			data: {"krExTitle": $('#cp-listup').attr('krExTitle')},
			
			success: function(list) {
				//console.log("list get success!");
				// let exList = list;
				//$('div#query-result-area').append("<h1>" + exList[0].toString() + "</h1>");
				// console.log(exList);
				// console.log(exList[0]);
				// console.log(exList[1]);
				// console.log(exList[0].krExTitle);
				$('div#query-result-area').append("<ul>");
				list.forEach( function(exercise) {
					$('div#query-result-area').append("<li>" + exercise.krExTitle + " (" + exercise.enExTitle + ") / " + exercise.step);
				}) // list.forEach end
				$('div#query-result-area').append("</ul>");
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}); // #blank on click end

	$('#blank').on('click', function(event) {
		//alert("blank clicked");
		event.preventDefault();
		$.ajax({
			url: "waist/show-all",
			type: "POST",

			data: {"krExTitle": "아이소메트릭 로우"},

			success: function(list) {
				//console.log("list get success!");
				// let exList = list;
				//$('div#query-result-area').append("<h1>" + exList[0].toString() + "</h1>");
				// console.log(exList);
				// console.log(exList[0]);
				// console.log(exList[1]);
				// console.log(exList[0].krExTitle);
				$('div#query-result-area').append("<ul>");
				list.forEach( function(exercise) {
					$('div#query-result-area').append("<li>" + exercise.krExTitle + " (" + exercise.enExTitle + ") / " + exercise.step);
				}) // list.foreach end
				$('div#query-result-area').append("</ul>");
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}); // #blank on click end
	
	$('#child-pose').on('click', function(event) {
		event.preventDefault();
		$.ajax({
			url: "waist/child-pose",
			type: "POST",
			
			/*dataType: "json",*/
			/*traditional: true, // ArrayList 받기*/
			
			success: function(steps) {
				//console.log("step 0 = " + steps[0]);
				setExercise(event, steps); // Child's pose로 운동 시작.
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}); // #child-pose on click end

	$('#isometric-rows').on('click', function(event) {
		event.preventDefault();
		$.ajax({
			url: "waist/isometric-rows",
			type: "GET",

			success: function(steps) {
				setExercise(event, steps);
			},
			error : function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}) // #isometric-rows on click end
	
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
}); // function() end