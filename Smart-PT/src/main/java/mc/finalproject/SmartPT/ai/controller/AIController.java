package mc.finalproject.SmartPT.ai.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


public interface AIController {

	public String stepTTS(@RequestParam("stepMsg") String stepMsg, @RequestParam("speed") int speed,
			HttpServletRequest request, HttpServletResponse response);
	
	public String SpeechToText(@RequestParam("language") String language,
			HttpServletRequest request, HttpServletResponse response);

}
