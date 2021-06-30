package mc.finalproject.SmartPT.exercise.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mc.finalproject.SmartPT.ai.service.AIService;
import mc.finalproject.SmartPT.exercise.dao.ExerciseDAO;
import mc.finalproject.SmartPT.exercise.vo.ExerciseVO;

@Controller
@RequestMapping(value = "/exercise")
public class ExerciseControllerImpl implements ExerciseController {
	private static final Logger logger = LoggerFactory.getLogger(ExerciseControllerImpl.class);

	@Autowired
	private AIService aiService;

	@Autowired
	private ExerciseDAO exerciseDAO;

	// Stretching Home - Stretching exercises list (Neck, Waist, Pelvis)
	@Override
	@RequestMapping(value = "/stretching", method = RequestMethod.GET)
	public String exercise_stretching(Locale locale, Model model) {
		System.out.println("ExerciseController exercise_stretching in");

		return "exercise/stretching/stretching_home";
	}

	// stretching.js window onload ajax request
	@RequestMapping(value = "/stretching/welcome", method = RequestMethod.POST)
	@ResponseBody
	public String stretching_welcome(Locale locale, Model model) {
		String welcomeMsg = "틀어진 몸을 교정하고, 찌뿌둥한 몸을 개운하게 할 스트레칭을 진행하겠습니다." + " 목, 허리, 골반 중 스트레칭하고 싶은 부위를 말씀해주세요.";

		String result = aiService.welcome(welcomeMsg);
		return result;
	}

	// Strengthening Home - Strengthening exercises list
	@Override
	@RequestMapping(value = "/strenghtening", method = RequestMethod.GET)
	public String exercise_strengthening(Locale locale, Model model) {
//		System.out.println("ExerciseController exercise_strengthening in");

		return "exercise/strengthening/strengthening_home";
	}

	// Neck stretching home page
	@Override
	@RequestMapping(value = "/stretching/neck", method = RequestMethod.GET)
	public String stretching_neck(Locale locale, Model model) {
		System.out.println("HomeController stretching_neck in");

		return "exercise/stretching/neck/neck_stretching";
	}

	// Waist stretching home page
	@Override
	@RequestMapping(value = "/stretching/waist", method = RequestMethod.GET)
	public String stretching_waist(Locale locale, Model model) {
		System.out.println("HomeController stretching_waist in");

		return "exercise/stretching/waist/waist_stretching";
	}

	// stretching_waist.js window onload ajax request
	@RequestMapping(value = "/stretching/waist/welcome", method = RequestMethod.POST)
	@ResponseBody
	public String stretching_waist_welcome(Locale locale, Model model) {
		String welcomeMsg = "허리를 스트레칭 합니다."
						+ " 차일드 포즈, 아이소메트릭 로우 중 진행할 운동을 골라주세요.";

		String result = aiService.welcome(welcomeMsg);
		return result;
	}

	// Show every exercises controller
	@RequestMapping(value = "/stretching/waist/show-all", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public List show_all(@RequestParam("krExTitle") String krExTitle, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("show-all in");

		List<ExerciseVO> exerciseList = null;

		// exerciseList = exerciseDAO.selectAll();
		exerciseList = exerciseDAO.selectExercise(krExTitle);
		for (ExerciseVO exercise : exerciseList) {
			System.out.println(exercise.toString());
		}

		return exerciseList;
	}

	// Show specific exercise controller
	@RequestMapping(value = "/get-one", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public List<ExerciseVO> get_exercise(@RequestParam("krExTitle") String krExTitle, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("exercise/get-one in");
		List<ExerciseVO> stepList = null;
		stepList = exerciseDAO.selectExercise(krExTitle);

//		for (ExerciseVO step : stepList) {
//			System.out.println(step.toString());
//		}
		return stepList;
	}

	// Pelvis stretching
	@Override
	@RequestMapping(value = "/exercise/stretching/pelvis", method = RequestMethod.GET)
	public String stretching_pelvis(Locale locale, Model model) {
		System.out.println("ExerciseController stretching_pelvis in");

		return "exercise/stretching/pelvis/pelvis_stretching";
	}

	// Exercise end - result page
	@Override
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String exercise_result(Locale locale, Model model) {

		return "exercise/exercise_result";
	}

}
