 package mc.finalproject.SmartPT.web.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mc.finalproject.SmartPT.user.vo.UserVO;
import mc.finalproject.SmartPT.web.service.UserService;
import mc.finalproject.SmartPT.web.service.BoardService;

@RestController
@RequestMapping("/user")
public class WEBControllerImpl implements WEBController{
	static Logger logger = LoggerFactory.getLogger(WEBControllerImpl.class);

	@Autowired
	private BoardService BService; //포스팅 서비스
	@Autowired
	private UserService UService; //유저 정보 서비스

   @Override
   public String postingMain() throws Exception {
	   // TODO Auto-generated method stub
	   return null;
   }
   //@ResponseBody
   @RequestMapping(value = "/Mypage.do",method=RequestMethod.GET)
   public String mypage(HttpSession session) {
	   String id =(String)session.getAttribute("id");
	   //유저 정보
	   UserVO user = null;
	   //UserVO user = UService.getUser();
	   //마이루틴 정보
	   List routineList = UService.myRoutine(id);
	   ModelAndView mav = new ModelAndView();
	   mav.addObject("user", user);
	   mav.addObject("myRoutineList",routineList);
	   return null; 
   }
   
   

   @RequestMapping(value="signIn", method=RequestMethod.GET)
   public ResponseEntity<String> signIn (@RequestBody String id, String Pw){
	   ResponseEntity<String>  resEntity = null;
	   
	   return resEntity;
   }
   
   @RequestMapping(value = "/login.do", method =  RequestMethod.GET)
   public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
	   String viewName = getViewName(request);
	   ModelAndView mav = new ModelAndView();
	   mav.setViewName(viewName);
	   return mav;
   }

   //@Override
   @RequestMapping(value = "/login/result.do", method = RequestMethod.POST)
   public ModelAndView login(@ModelAttribute("member") UserVO member, RedirectAttributes rAttr,
	                       HttpServletRequest request, HttpServletResponse response) throws Exception {
	   ModelAndView mav = new ModelAndView();
	   String viewName = this.getViewName(request);
	   memberVO = memberService.login(member);
	   if(memberVO != null) {
		   HttpSession session = request.getSession();
		   session.setAttribute("member", memberVO);
		   session.setAttribute("isLogOn", true);
		   mav.setViewName("redirect:/member/listMembers.do");
		   System.out.println(memberVO.getId()+":::"+memberVO.getName());

	   }else {
		   rAttr.addAttribute("result","loginFailed");
		   mav.setViewName("redirect:/member/loginForm.do");
		   System.out.println(member.getId()+":::"+member.getPwd()+"�� �ش��ϴ� ������ �����ϴ�.");
		   }
mav.setViewName(viewName);
return mav;
}
}