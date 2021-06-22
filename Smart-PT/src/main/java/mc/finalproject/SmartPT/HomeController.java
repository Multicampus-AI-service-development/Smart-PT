package mc.sn.basic;

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

import mc.sn.basic.ai.service.AIService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
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
	
	@RequestMapping(value = "/trans", method = RequestMethod.GET)
	public String trans(Locale locale, Model model) {
		
		
		return "translate";
	}
	
	@RequestMapping(value = "/voice", method = RequestMethod.GET)
	public String voice(Locale locale, Model model) {
		
		
		return "voiceRecord";
	}
		
	@RequestMapping(value = "/stt", method = RequestMethod.GET)
	public String stt(Locale locale, Model model) {
		
		
		return "sttResult";
	}
	
	@Autowired
	private AIService aiService;
	
	@RequestMapping(value="API/SpeechToText", method=RequestMethod.POST, produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String SpeechToText(@RequestParam("language") String language,
							HttpServletRequest request, HttpServletResponse response) {
		System.out.println("SpeechToText success");
		String result = aiService.SpeechToText(language);
		
		return result;
	}
	
	
	@RequestMapping(value = "/ocr", method = RequestMethod.GET)
	public String ocr(Locale locale, Model model) {
		
		
		return "ocrResult";
	}
	
	@RequestMapping(value = "/tts", method = RequestMethod.GET)
	public String tts(Locale locale, Model model) {
		
		
		return "ttsResult";
	}
	
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chat(Locale locale, Model model) {
		
		
		return "chatForm";
	}
	
	@RequestMapping(value = "/chat2", method = RequestMethod.GET)
	public String chat2(Locale locale, Model model) {
		
		
		return "chatForm2";
	}

//	@RequestMapping(value="/nmt1" ,method = RequestMethod.GET)
//	@ResponseBody
//	public String removeMember(@RequestParam("words") String words, 
//			           HttpServletRequest request, HttpServletResponse response) throws Exception{
//		request.setCharacterEncoding("utf-8");
//		 System.out.println(words);
//		 String result = "test";
//		 StringBuffer res = null;
//		 String clientId = "56t07ba7h3";//애플리케이션 클라이언트 아이디값";
//	     String clientSecret = "gYXW7tSFH87HfuRvcouG4nZIRc1b3rjdkLJOPWTm";//애플리케이션 클라이언트 시크릿값";
//	     try {
//	         String text = URLEncoder.encode(words, "UTF-8");
//	         String apiURL = "https://naveropenapi.apigw.ntruss.com/nmt/v1/translation";
//	         URL url = new URL(apiURL);
//	         HttpURLConnection con = (HttpURLConnection)url.openConnection();
//	         con.setRequestMethod("POST");
//	         con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
//	         con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
//	         // post request
//	         String postParams = "source=ko&target=en&text=" + text;
//	         con.setDoOutput(true);
//	         DataOutputStream wr = new DataOutputStream(con.getOutputStream());
//	         wr.writeBytes(postParams);
//	         wr.flush();
//	         wr.close();
//	         int responseCode = con.getResponseCode();
//	         BufferedReader br;
//	         if(responseCode==200) { // 정상 호출
//	             br = new BufferedReader(new InputStreamReader(con.getInputStream()));
//	         } else {  // 오류 발생
//	             br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
//	         }
//	         String inputLine;
//	         res = new StringBuffer();
//	         while ((inputLine = br.readLine()) != null) {
//	             res.append(inputLine);
//	         }
//	         br.close();
//	         System.out.println(res.toString());
//	         result = res.toString();
//	     } catch (Exception e) {
//	         System.out.println(e);
//	     }
//		
//	
//		return result;
//	}
	
}
