 package mc.finalproject.SmartPT.web.controller;


import java.util.ArrayList;
import java.util.HashMap;
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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

import mc.finalproject.SmartPT.user.vo.RoutineVO;
import mc.finalproject.SmartPT.user.vo.UserVO;
import mc.finalproject.SmartPT.web.service.UserService;
import mc.finalproject.SmartPT.web.service.BoardService;

@RequestMapping("/WEB")
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
   
   @RequestMapping(value = "/myRoutine.do", method = RequestMethod.GET)
   public ModelAndView myRoutine() throws Exception {
	   
	   HashMap<String,List<String>> resultData = UService.myRoutine("1");
	   
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("posting/myRoutine");
	   
	   mv.addObject("routineName", resultData.get("routineName"));
	   mv.addObject("engName", resultData.get("engName"));
	   mv.addObject("imaPath", resultData.get("imaPath"));
	   mv.addObject("description", resultData.get("description"));
	   
	   return mv;
   }
   
   //루틴 선택
   @RequestMapping(value = "/selectRoutine_neck.do", method = RequestMethod.GET)
   public String selectRoutine() throws Exception {
	   
	   return "posting/selectRoutine_neck";
   }
   
   @RequestMapping(value = "/selectRoutine_waist.do", method = RequestMethod.GET)
   public String selectRoutine_waist() throws Exception {
	   
	   return "posting/selectRoutine_waist";
   }
   
   @RequestMapping(value = "/selectRoutine_pelvis.do", method = RequestMethod.GET)
   public String selectRoutine_pelvis() throws Exception {
	   
	   return "posting/selectRoutine_pelvis";
   }
   
   @RequestMapping(value = "/selectRoutine_core.do", method = RequestMethod.GET)
   public String selectRoutine_core() throws Exception {
	   
	   return "posting/selectRoutine_core";
   }
   
   //루틴 수정 
   @RequestMapping(value = "/updateRoutine.do", method = RequestMethod.GET)
   public ModelAndView updateRoutine(ModelMap model , HttpServletRequest request) throws Exception {
	   
	   UService.updateRoutine(model, request);
	   
	   HashMap<String,List<String>> resultData = UService.myRoutine("1");
	   
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("posting/"+
	   request.getHeader("REFERER").split("/")[4].substring(0,request.getHeader("REFERER").split("/")[4].length()-3));
	   
	   mv.addObject("routineName", resultData.get("routineName"));
	   mv.addObject("engName", resultData.get("engName"));
	   mv.addObject("imaPath", resultData.get("imaPath"));
	   mv.addObject("description", resultData.get("description"));
	   
	   return mv;
	  
   }
   
   @RequestMapping(value = "/delete.do", method = RequestMethod.POST)
   public void delete(RoutineVO vo) throws Exception {
	   
	   System.out.println(vo.getRoutine()+"dafsfads");
   }
   
   
//   //@ResponseBody
//   @RequestMapping(value = "/Mypage.do",method=RequestMethod.GET)
//   public String mypage(HttpSession session) {
//	   String id =(String)session.getAttribute("id");
//	   //유저 정보
//	   UserVO user = null;
//	   //UserVO user = UService.getUser();
//	   //마이루틴 정보
//	   List routineList = UService.myRoutine(id);
//	   ModelAndView mav = new ModelAndView();
//	   mav.addObject("user", user);
//	   mav.addObject("myRoutineList",routineList);
//	   return null; 
//   }


}