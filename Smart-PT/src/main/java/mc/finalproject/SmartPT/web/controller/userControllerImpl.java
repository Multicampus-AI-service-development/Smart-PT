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

import mc.finalproject.SmartPT.user.vo.UserVO;
import mc.finalproject.SmartPT.web.service.UserService;

@RestController 
@RequestMapping("/user/*")
public class userControllerImpl {
	
	
	@Autowired
	private UserService userService; //유저 정보 서비스
	
	
	@RequestMapping(value = "/checkId.do", method = RequestMethod.GET)
	@ResponseBody
	public String duplicationCheck(@RequestParam("userId") String userId, 
	           HttpServletRequest request, HttpServletResponse response) throws Exception{
			System.out.println(userId);
			int res=0;
			res = userService.duplicationCheck(userId);
//			try {
//				res = userService.duplicationCheck(userId);
//			} catch (DataFormatException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
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
			return result;
	}
	
	@RequestMapping(value = "/add.do",method = RequestMethod.POST)
	@ResponseBody
	public String signup(@ModelAttribute("userInfo") UserVO userVO,
            HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		
			System.out.println(userVO.toString());
			Boolean res = false;
			res = userService.signUp(userVO);
//			try {
//				res = userService.duplicationCheck(userId);
//			} catch (DataFormatException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			String result = "false";
			if(res) {
				result = "true";
				System.out.println("가입 완료");
			}else {
				result = "false";
				System.out.println("가입 에러");
			}
			result = "{\"result\":"+result+"}";
			System.out.println("\n========\n" + result);
			return result;
	}
	
	
}
