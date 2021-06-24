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
@RequestMapping(value="/exercise")
public class ExerciseControllerImpl implements ExerciseController {
	private static final Logger logger = LoggerFactory.getLogger(ExerciseControllerImpl.class);
	
	@Autowired
	private ExerciseDAO exerciseDAO;
	
	
	// Stretching Home - Stretching exercises list (Neck, Waist, Pelvis)
	@Override
	@RequestMapping(value="/stretching", method=RequestMethod.GET)
	public String exercise_stretching(Locale locale, Model model) {
		System.out.println("HomeController exercise_stretching in");
		
		return "exercise/stretching/stretching_home";
	}
	
	
	// Neck stretching home page
	@Override
	@RequestMapping(value="/stretching/neck", method=RequestMethod.GET)
	public String stretching_neck(Locale locale, Model model) {
		System.out.println("HomeController stretching_neck in");
		
		return "exercise/stretching/neck/neck_stretching";
	}
	

	// Waist stretching home page
	@Override
	@RequestMapping(value="/stretching/waist", method=RequestMethod.GET)
	public String stretching_waist(Locale locale, Model model) {
		System.out.println("HomeController stretching_waist in");
		
		return "exercise/stretching/waist/waist_stretching";
	}
	
	
	// Child's pose controller
	@RequestMapping(value="/stretching/waist/child-pose", method=RequestMethod.POST, produces="application/json; charset=UTF-8")
	@ResponseBody
	public ArrayList<ExerciseVO> child_pose(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("charset=UTF-8");
		
//		String [] stepList = {"1. 손과 무릎을 땅에 대고 엉덩이를 뒤꿈치에 기대듯 뒤로 기울인다.",
//								"2. 몸을 앞으로 접으면서 엉덩이를 구부리고, 손을 앞쪽으로 내민다.",
//								"3. 아랫배를 허벅지에 대고 쉰다.",
//								"4. 손바닥을 위로 향하게 하면서 몸 앞으로 팔을 쭉 뻗는다.",
//								"5. 깊게 심호흡하는 데에 집중하고, 몸 전반에 걸친 긴장을 풀어준다.",
//								"6. 최대 1분까지 자세를 유지한다."};
//		
//		ArrayList<String> steps = new ArrayList<>();
//		
//		for (String step : stepList)
//			steps.add(step);
		
		ArrayList<ExerciseVO> stepList = (ArrayList)exerciseDAO.selectExercise("차일드 포즈");

		return stepList;
	}

	// Isometric-rows controller
	@RequestMapping(value="/stretching/waist/isometric-rows", method=RequestMethod.GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public List<ExerciseVO> isometric_rows(HttpServletRequest request, HttpServletResponse reponse) throws Exception {
		List<ExerciseVO> stepList = null;
		stepList = exerciseDAO.selectExercise("아이소메트릭 로우");
		return stepList;
	}
	
	// Show every exercises controller
	@RequestMapping(value="/stretching/waist/show-all", method=RequestMethod.POST,
					produces="application/json; charset=UTF-8")
	@ResponseBody
	public List show_all(@RequestParam("krExTitle") String krExTitle,
							HttpServletRequest request, HttpServletResponse response) {
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
	@RequestMapping(value="/get-one", method=RequestMethod.GET,
					produces="application/json; charset=UTF-8")
	@ResponseBody
	public List<ExerciseVO> get_exercise(@RequestParam("krExTitle") String krExTitle,
								HttpServletRequest request, HttpServletResponse response) {
		List<ExerciseVO> stepList = null;
		stepList = exerciseDAO.selectExercise(krExTitle);
		return stepList;
	}
	
	
	// Exercise end - result page
	@Override
	@RequestMapping(value="/result", method=RequestMethod.GET)
	public String exercise_result(Locale locale, Model model) {
		
		
		return "exercise/exercise_result";
	}


	// Pelvis stretching
	@Override
	@RequestMapping(value="/exercise/stretching/pelvis", method=RequestMethod.GET)
	public String stretching_pelvis(Locale locale, Model model) {
		System.out.println("HomeController stretching_pelvis in");
		
		return "exercise/stretching/pelvis/pelvis_stretching";
	}
	
}
