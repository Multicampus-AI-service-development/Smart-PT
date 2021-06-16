package mc.finalproject.SmartPT.web.controller;

<<<<<<< HEAD
@Controller
@RequestMapping("/posting")
public class WEBControllerImpl implements WEBController{
=======
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
>>>>>>> branch 'main' of https://github.com/Multicampus-AI-service-development/Smart-PT.git

<<<<<<< HEAD
	public String postingMain() {
		System.out.println("BoardController.postingMain()");
		return "posting/postingMain";
	}
=======
import mc.finalproject.SmartPT.web.service.WEBService;

@Controller
public class WEBControllerImpl implements WEBController{
	
	@Autowired
	WEBService service; //서비스
	
	//게시판
	
>>>>>>> branch 'main' of https://github.com/Multicampus-AI-service-development/Smart-PT.git
}
