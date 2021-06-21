/**
 * waist_stretching.js
 */


$(function () {
	console.log("waist_stretching js loaded");
	let ex_steps = null;
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
				ex_steps = steps;
				
				var key = "phase" + Number($('#phase').val());
				console.log(steps[0]);
				
				/*$('#activity-area').text(ex_steps[0]);*/
				$('#activity-area-h2').text(ex_steps[0]);
				stepTTS(event);
				/*var phase = Number($('#phase').val());
				console.log("phase : " + phase);
				$('#phase').prop('value', phase + 1);
				phase = Number($('#phase').val());
				console.log("after phase : " + phase);
				$('#activity-area').text(steps);*/
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
					$('#next').prop('value', "운동 종료");
					$('#next').attr('id', "end");
				}
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}) // #next on click end

	$('#end').on('click', function() {
		console.log("end clicked");
		location.replace("exercise/result");
	}) // #end on click end
}); // function() end