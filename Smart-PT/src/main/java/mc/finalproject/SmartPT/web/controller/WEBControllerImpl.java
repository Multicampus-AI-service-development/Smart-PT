 package mc.finalproject.SmartPT.web.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
<<<<<<< HEAD
=======
import org.springframework.web.servlet.ModelAndView;
>>>>>>> branch 'main' of https://github.com/Multicampus-AI-service-development/Smart-PT.git

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
   @RequestMapping(value = "/boardList.do", method = RequestMethod.GET)
   public String boardList() throws Exception {
	   
	   System.out.println("test");
	   //service.boardList();
	   
	   return "posting/boardList";
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