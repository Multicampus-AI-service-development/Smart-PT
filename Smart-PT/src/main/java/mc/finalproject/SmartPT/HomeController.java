package mc.finalproject.SmartPT;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	
	// Stretching after control
	
	@RequestMapping(value="/exercise/stretching/neck", method=RequestMethod.GET)
	public String stretching_neck(Locale locale, Model model) {
		System.out.println("HomeController stretching_neck in");
		
		return "exercise/stretching/neck_stretching";
	}
	
	@RequestMapping(value="/exercise/stretching/waist", method=RequestMethod.GET)
	public String stretching_waist(Locale locale, Model model) {
		System.out.println("HomeController stretching_waist in");
		
		return "exercise/stretching/waist_stretching";
	}
	
	@RequestMapping(value="/exercise/stretching/pelvis", method=RequestMethod.GET)
	public String stretching_pelvis(Locale locale, Model model) {
		System.out.println("HomeController stretching_pelvis in");
		
		return "exercise/stretching/pelvis_stretching";
	}
	
}
