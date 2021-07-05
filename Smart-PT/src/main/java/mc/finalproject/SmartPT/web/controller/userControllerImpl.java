package mc.finalproject.SmartPT.web.controller;

import java.io.IOException;
import java.util.Locale;
import java.util.zip.DataFormatException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
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
public class userControllerImpl implements userController{
	
	
	@Autowired
	private UserService userService; //유저 정보 서비스
	
	@Override
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
	
	@Override
	@RequestMapping(value = "/signIn.do", method = RequestMethod.POST)
	@ResponseBody
	public String signin(/*@ModelAttribute("user")*/@RequestBody UserVO userVO,
            Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
			System.out.println(userVO.toString());
			Boolean res = false;
			System.out.println(userVO.getId());
			System.out.println(userVO.getPwd());
			UserVO vo = new UserVO();
			vo = userService.login(userVO.getId(),userVO.getPwd());
//			try {
//				res = userService.duplicationCheck(userId);
//			} catch (DataFormatException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			String result = "false";
			if(vo != null) {
				result = "true";
				HttpSession session = request.getSession();
				session.setAttribute("vo", vo);
				System.out.println("로그인 성공");
				
			}else {
				result = "false";
				System.out.println("로그인 실패");
			}
			result = "{\"result\":"+result+"}";
			System.out.println("\n========\n" + result);
			return result;
	}
	
	
	@RequestMapping(value = "/findId.do", method = RequestMethod.POST)
	@ResponseBody
	public String findId(@RequestBody UserVO userVO,Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
			System.out.println(userVO.toString());

			String res = userService.findId(userVO);

			String result = "false";
			if(res != null) {
				result = "true";
				System.out.println("아이디 찾기 성공");
			}else {
				result = "false";
				System.out.println("아이디 찾기 실패");
			}
			result = "{\"result\":"+result+",\"id\":\""+res+"\"}";
			System.out.println("\n========\n" + result);
			return result;
	}
	
	@RequestMapping(value = "/findPw.do", method = RequestMethod.POST)
	@ResponseBody
	public String findPw(@RequestBody UserVO userVO,Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
			System.out.println(userVO.toString());

			String res = userService.findPw(userVO);

			String result = "false";
			if(res != null) {
				result = "true";
				System.out.println("비밀번호 찾기 성공");
			}else {
				result = "false";
				System.out.println("비밀번호 찾기 실패");
			}
			result = "{\"result\":"+result+",\"pw\":\""+res+"\"}";
			System.out.println("\n========\n" + result);
			return result;
	}
	
	@Override
	public boolean logincheck(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		UserVO vo = (UserVO) session.getAttribute("vo");
		if(vo == null) {
			return false;
		}
		
		return true;
	}
	
	@Override
	@RequestMapping(value = "/idpwcheck.do", method = RequestMethod.POST)
	@ResponseBody
	public String idpwcheck(@RequestBody UserVO userVO, Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
			System.out.println(userVO.toString());
			Boolean res = false;
			System.out.println(userVO.getId());
			System.out.println(userVO.getPwd());
			UserVO vo = new UserVO();
			vo = userService.login(userVO.getId(),userVO.getPwd());

			String result = "false";
			if(vo != null) {
				result = "true";
				
			}else {
				result = "false";
			}
			result = "{\"result\":"+result+"}";
			System.out.println("\n========\n" + result);
			return result;
	}
	
	@Override
	@RequestMapping(value = "/add.do", method = RequestMethod.POST)
	@ResponseBody
	public String signup(@RequestBody UserVO userVO, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
			System.out.println(userVO.toString());
			Boolean res = false;
			res = userService.signUp(userVO);

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
	
	@Override
	@RequestMapping(value = "/edit.do", method = RequestMethod.POST)
	@ResponseBody
	public String edit(@RequestBody UserVO userVO, HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
			System.out.println(userVO.toString());
			Boolean res = false;
			res = userService.edit(userVO);

			String result = "false";
			if(res) {
				result = "true";
				System.out.println("수정 완료");
				request.getSession().removeAttribute("vo");

			}else {
				result = "false";
				System.out.println("수정 에러");
			}
			result = "{\"result\":"+result+"}";
			System.out.println("\n========\n" + result);
			return result;
	}
	
}
