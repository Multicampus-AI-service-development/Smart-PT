package mc.finalproject.SmartPT;

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

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private AIService aiService;

	
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
	
	// stepTTS
	@RequestMapping(value="API/stepTTS", method=RequestMethod.POST)
	@ResponseBody
	public String stepTTS(@RequestParam("stepMsg") String stepMsg,
							HttpServletRequest request, HttpServletResponse response) {
		System.out.println("stepTTS in");
		String result = aiService.stepTTS(stepMsg);
		
		return result;
	}
	
}
