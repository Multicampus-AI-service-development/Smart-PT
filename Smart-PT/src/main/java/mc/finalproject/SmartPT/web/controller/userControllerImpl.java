package mc.finalproject.SmartPT.web.controller;

import java.util.zip.DataFormatException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import mc.finalproject.SmartPT.web.service.UserService;

@RestController 
@RequestMapping("/dup/*")
public class userControllerImpl {
	
	
	@Autowired
	private UserService userService; //유저 정보 서비스
	
	
	@RequestMapping(value = "/checkId.do")
	@ResponseBody
	public String res1(@RequestParam("userId") String userId, 
	           HttpServletRequest request, HttpServletResponse response){
			System.out.println(userId);
			int res=0;
			try {
				res = userService.duplicationCheck(userId);
			} catch (DataFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String result = "false";
			if(res == 1) {
				result = "true";
				System.out.println("중복");
			}else {
				result = "false";
				System.out.println("가능");
			}
			result = "{\"result\":"+result+"}";
			System.out.println("\n========\n" + result);
			//���峻�� �ֵ���ǥ \"
		return result;
	}
	
	
}
