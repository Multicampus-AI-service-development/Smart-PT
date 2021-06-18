package mc.finalproject.SmartPT;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}. hy joined and let's get started", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	// Stretching control
	
	@RequestMapping(value="/exercise/stretching", method=RequestMethod.GET)
	public String exercise_stretching(Locale locale, Model model) {
		System.out.println("HomeController exercise_stretching in");
		
		return "exercise/stretching/stretching_home";
	}
	
	
	// // Stretching after control
	// neck stretching
	@RequestMapping(value="/exercise/stretching/neck", method=RequestMethod.GET)
	public String stretching_neck(Locale locale, Model model) {
		System.out.println("HomeController stretching_neck in");
		
		return "exercise/stretching/neck/neck_stretching";
	}
	
	// waist stretching
	@RequestMapping(value="/exercise/stretching/waist", method=RequestMethod.GET)
	public String stretching_waist(Locale locale, Model model) {
		System.out.println("HomeController stretching_waist in");
		
		return "exercise/stretching/waist/waist_stretching";
	}
	
//	public String child_pose(@RequestParam("...") String activity) {
//		StretchingDAO stretchingDAO = activity;
//		
//		return "";
//	}
	@RequestMapping(value="/exercise/stretching/waist/child-pose", method=RequestMethod.POST, produces="application/json; charset=UTF-8")
	@ResponseBody
	public ArrayList<String> child_pose(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("charset=UTF-8");
		
		String [] stepList = {"1. 손과 무릎을 땅에 대고 엉덩이를 뒤꿈치에 기대듯 뒤로 기울인다.",
								"2. 몸을 앞으로 접으면서 엉덩이를 구부리고, 손을 앞쪽으로 내민다.",
								"3. 아랫배를 허벅지에 대고 쉰다.",
								"4. 손바닥을 위로 향하게 하면서 몸 앞으로 팔을 쭉 뻗는다.",
								"5. 깊게 심호흡하는 데에 집중하고, 몸 전반에 걸친 긴장을 풀어준다.",
								"6. 최대 1분까지 자세를 유지한다."};
		
		ArrayList<String> steps = new ArrayList<>();
		
		for (String step : stepList)
			steps.add(step);

		return steps;
	}
	
	// pelvis stretching
	@RequestMapping(value="/exercise/stretching/pelvis", method=RequestMethod.GET)
	public String stretching_pelvis(Locale locale, Model model) {
		System.out.println("HomeController stretching_pelvis in");
		
		return "exercise/stretching/pelvis/pelvis_stretching";
	}
	
}
