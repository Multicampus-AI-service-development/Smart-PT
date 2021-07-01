package mc.finalproject.SmartPT.ai.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
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
import org.springframework.web.multipart.MultipartFile;

import mc.finalproject.SmartPT.HomeController;
import mc.finalproject.SmartPT.ai.service.AIService;

@Controller("aiController")
@RequestMapping("/API")
public class AIControllerImpl implements AIController {
	@Autowired
	private AIService aiService;
//	@Autowired
//	private CLOVAService clovaService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping("/")
	public String home(Locale locale, Model model) {
		return "API/home";
	}

	
	// stepTTS
	@RequestMapping(value = "/stepTTS", method = RequestMethod.POST)
	@ResponseBody
	public String stepTTS(@RequestParam("stepMsg") String stepMsg, @RequestParam("speed") int speed,
						HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("stepTTS in");
		String result = aiService.stepTTS(stepMsg, speed);

		return result;
	}

	
	@RequestMapping(value = "/SpeechToText", method = RequestMethod.POST, produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String SpeechToText(@RequestParam("language") String language, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("AIController SpeechToText in");
		String result = aiService.SpeechToText(language);

		return result;
	}
}
