/**
 *  stretching_home.js
 */
 
 /*
 $(document).ready(function() {	
*/

console.log("leader.js loaded");
import { voiceRecord } from './voiceRecord.js'

$(function() {
	// welcome and start to lead user
	window.onload = function() {
		if (document.referrer.includes("/exercise/result")) {
			console.log("came from result page. main page welcome message won't be played. window.onload terminated");
			return;
		}
		else if (window.location.pathname.includes("/home")) {
			console.log("Home page. terminate window.onload");
			return;
		}
		
		let URL = window.location.pathname;
		let ajaxURL = "";
		
		if (URL[URL.length - 1] === '/') {
			URL = URL.split('/');
			URL.pop();
			URL = URL.join('/');
		}
		
		ajaxURL = URL + "/welcome";
		$.ajax({
                url: ajaxURL,
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
                    	  
        }); // ajax end
	} // window onload end
	
	// for new home.jsp - START button action
	$('input#start').on('click', function() {
		let URL = window.location.pathname;
		let ajaxURL = "";
		
		if (URL[URL.length - 1] === '/') {
			URL = URL.split('/');
			URL.pop();
			URL = URL.join('/');
		}
		
		ajaxURL = URL + "/welcome";
		$.ajax({
                url: ajaxURL,
                // dataType:'json',
                type:'GET',
                data:{'voice':$('#voice').val()},
                success:function(result){
                	//alert("succeed")
	                $('audio').prop("src", '/ai/' + result);
					document.getElementById("aud").play();
				},
				error:function(e){
					alert("에러 발생 : " + e);
				}
                    	  
        }); // ajax end
	}); // input#start on click end
	
	// detect finishing audio && automatically record voice and save to file Record_Message.mp3
	voiceRecord();
	
	
	// @@@@@@ while training is ongoing @@@@@@
	
	$('div#exercise_list').on('click', startExercise);
	
	let ex_steps = null;
	
	// Exercise start - Initalizing function
	function startExercise(event) {
		console.log("startExercise");
		event.preventDefault();
		let krExTitle = event.target.getAttribute('krExTitle');
		
		$.ajax({
			 url: "/SmartPT/exercise/get-one", // for local
			//url: "/Smart-PT2/exercise/get-one", // for remote server
			type: "POST",
			
			data: {"krExTitle": krExTitle},
			
			success: function(steps) {
				$('#exercise_list').attr('hidden', "hidden"); // 운동 목록 숨기기
				
				ex_steps = steps; // 선택된 운동으로 진행 과정 초기화
				$('#activity-area-h2').text(ex_steps[0].step); // 선택된 운동으로 activity area 초기화
				
				// 현재 운동 진행 정보 알려주는 step_div 설정
				var stepNo = Number( $('button#stepIdx').val()) + 1;
				$('span#step_indicator').text( stepNo + "단계");
				$('button#next').removeAttr('hidden');
				
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
			url: "/SmartPT/API/stepTTS", // for local
			//url: "/Smart-PT2/API/stepTTS", // for remote server
			type: "POST",
			
			data: {
				"stepMsg": ex_steps[Number($('button#stepIdx').val())].step,
				"speed": 2},
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
	
	$('button#next').on('click', function(event) {
		//console.log("next clicked");
		event.preventDefault();
		$.ajax({
			success: function() {
				//console.log("next step");
				
				var step = Number($('#stepIdx').val()) + 1;
				$('#stepIdx').prop('value', step); // Phase(step) 1 증가
				console.log(ex_steps[step]);
				/*$('#activity-area').text(ex_steps[step]);*/
				$('#activity-area-h2').text(ex_steps[step].step); // 바뀐 phase(step)로 현재 진행되는 step 변경
				
				// step_div 설정
				$('span#step_indicator').text( (step + 1) + "단계");
				
				stepTTS(event);

				if (step === ex_steps.length - 1) {
					console.log("step이 끝났습니다.");
					$('button#next').text("운동 종료");
					$('button#next').attr('class', "btn btn-info");
					$('button#next').attr('id', "end");
					$('button#next').attr('hidden', "hidden");
					$('button#next').attr('disabled', "disabled");
					// disabled 하지 않으면 id next인 input이 id end로 바뀌더라도 id next로 인식되어 클릭되는 버그
				}
			},
			error: function(e) {
				alert("에러 발생 : " + e);
			}
		}) // ajax end
	}) // #next on click end
	
	// @@@@@@ training end point @@@@@@
	
	$(document).on('click', 'button#end', function() { // 동적 이벤트 바인딩 위해 $(document) 활용
		console.log("end clicked");
		location.replace("/SmartPT/exercise/result"); // 결과 페이지로 이동
	}) // #end on click end	
	

}); //$(function() 끝