package mc.finalproject.SmartPT.exercise.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


public interface ExerciseController {
	public String exercise_stretching(Locale locale, Model model);
	public String exercise_strengthening(Locale locale, Model model);
	
	public String stretching_neck(Locale locale, Model model);
	public String stretching_waist(Locale locale, Model model);
	public String stretching_pelvis(Locale locale, Model model);
	
	public String exercise_result(Locale locale, Model model);
}
