 package mc.finalproject.SmartPT.web.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mc.finalproject.SmartPT.user.vo.UserVO;
import mc.finalproject.SmartPT.web.service.BoardService;
import mc.finalproject.SmartPT.web.service.UserService;

@Controller
public class WEBControllerImpl implements WEBController{
   
   @Autowired
   BoardService BService; //포스팅 서비스
   @Autowired
   UserService UService; //유저 정보 서비스

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

}