/**
 * waist_stretching.js
 */


$(function () {
	console.log("waist_stretching js loaded");
	let ex_steps = null;

	let setExercise = function(event, steps) {
		ex_steps = steps;
		$('#exercise_list').attr('hidden', "hidden");
		var key = "phase" + Number($('#phase').val());
		console.log(steps[0]);
		
		$('#activity-area-h2').text(ex_steps[0]);
		stepTTS(event);
	}
	
	let stepTTS = function(event) {
		event.preventDefault();
		$.ajax({
			url: "/SmartPT/API/stepTTS",
			type: "POST",
			
			data: {"stepMsg": ex_steps[Number($('#step').val() ) - 1]},
			/*contentType: false,*/

			success: function(stepTTSfile) {
				console.log("stepTTS success");

				$('audio').prop("src", '/ai/' + stepTTSfile);
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}; // stepTTS end
	

	$('#child-pose').on('click', function(event) {
		event.preventDefault();
		$.ajax({
			url: "waist/child-pose",
			type: "POST",
			
			/*dataType: "json",*/
			/*traditional: true, // ArrayList 받기*/
			
			success: function(steps) {
				setExercise(event, steps);
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}); // #child-pose on click end
	
	$('#next').on('click', function(event) {
		console.log("next clicked");
		event.preventDefault();
		$.ajax({
			success: function() {
				console.log("next step");
				
				var step = Number($('#step').val());
				$('#step').prop('value', step + 1);
				console.log(ex_steps[step]);
				/*$('#activity-area').text(ex_steps[step]);*/
				$('#activity-area-h2').text(ex_steps[step]);
				stepTTS(event);

				if (step == 5) {
					console.log("step이 끝났습니다.");
					$('input#next').attr('value', "운동 종료");
					$('input#next').attr('id', "end");
					$('input#next').attr('hidden', "hidden");
					$('input#next').attr('disabled', "disabled");
				}
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}) // #next on click end

	$(document).on('click', '#end', function() {
		console.log("end clicked");
		location.replace("/SmartPT/exercise/result");
	}) // #end on click end
}); // function() end