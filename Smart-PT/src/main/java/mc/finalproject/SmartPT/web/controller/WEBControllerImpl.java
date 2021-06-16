package mc.finalproject.SmartPT.web.controller;

@Controller
@RequestMapping("/posting")
public class WEBControllerImpl implements WEBController{

	public String postingMain() {
		System.out.println("BoardController.postingMain()");
		return "posting/postingMain";
	}
}
