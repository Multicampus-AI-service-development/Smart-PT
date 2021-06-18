/**
 * waist_stretching.js
 */


$(function () {
	console.log("waist_stretching js loaded");
	let ex_steps = null;
	
	$('#child-pose').on('click', function(event) {
		event.preventDefault();
		$.ajax({
			url: "waist/child-pose",
			type: "POST",
			
			/*dataType: "json",*/
			/*traditional: true, // ArrayList 받기*/
			
			success: function(steps) {
				console.log("success");
				ex_steps = steps;
				
				var key = "phase" + Number($('#phase').val());
				console.log(steps[0]);
				
				$('#activity-area').text(ex_steps[0]);
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
		event.preventDefault();
		$.ajax({
			success: function() {
				console.log("next step");
				
				var step = Number($('#step').val());
				$('#step').prop('value', step + 1);
				console.log(ex_steps[step]);
				$('#activity-area').text(ex_steps[step]);
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		})
	})
}); // function() end