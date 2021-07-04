package mc.finalproject.SmartPT.web.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import mc.finalproject.SmartPT.user.vo.UserVO;

public interface userController {
	public String duplicationCheck(@RequestParam("userId") String userId, 
	           HttpServletRequest request, HttpServletResponse response) throws Exception;
	public String signin(/*@ModelAttribute("user")*/@RequestBody UserVO userVO,
            Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public boolean logincheck(HttpServletRequest request, HttpServletResponse response) throws IOException;
	public String idpwcheck(@RequestBody UserVO userVO,
            Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public String signup(@RequestBody UserVO userVO,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	public String edit(@RequestBody UserVO userVO,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	
		
	
}
