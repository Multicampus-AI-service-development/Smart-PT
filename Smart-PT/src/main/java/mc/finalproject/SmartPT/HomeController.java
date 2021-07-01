package mc.finalproject.SmartPT;

import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.util.Base64;
import java.util.Base64.Decoder;
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

import mc.finalproject.SmartPT.ai.service.AIService;

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
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}. hy joined and let's get started", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		return "index";
	}
	
	// Welcome
	@RequestMapping(value="/welcome", method=RequestMethod.GET)
	@ResponseBody
	public String welcome(Locale locale, Model model) {
		System.out.println("Welcome Main Page!");
		
		String welcomeMsg = "스마트PT에 오신 것을 환영합니다."
				+ " 본 소프트웨어는 음성인식을 기반으로 진행됩니다."
				+ " PT를 시작하겠습니다. 스트레칭과 근력강화 중 원하는 것을 고르십시오";
		
		String result = aiService.welcome(welcomeMsg);
		return result;
	}
	
	// voiceRecord.js reader onloadend ajax request for audio blob data handling
	@RequestMapping(value="record/blob", method=RequestMethod.POST, produces="application/text; charset=utf-8")
	@ResponseBody
	public String record_blob(@RequestParam("base64data") String base64blobdata) {
//		System.out.println("ajax caught!");
//		System.out.println("Incoming data : " + base64blobdata);
		System.out.println("recorded blob data saving to Record_Message.mp3");
		Decoder decoder = Base64.getDecoder();
		byte[] decodedByte = decoder.decode(base64blobdata.split(",")[1]);
		
		try {
			File f = new File("C:\\ai\\" + "Record_Message.mp3");
			f.createNewFile();
			FileOutputStream fos = new FileOutputStream(f);
			
			fos.write(decodedByte);
			fos.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return "success message";
	}
	
	
}
