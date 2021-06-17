 package mc.finalproject.SmartPT.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mc.finalproject.SmartPT.web.service.BoardService;

@Controller
public class WEBControllerImpl implements WEBController{
   
   @Autowired
   BoardService service; //서비스

   @Override
   @RequestMapping(value = "/boardList.do", method = RequestMethod.GET)
   public String boardList() throws Exception {
	   
	   System.out.println("test");
	   //service.boardList();
	   
	   return "posting/boardList";
   }
   
  

}