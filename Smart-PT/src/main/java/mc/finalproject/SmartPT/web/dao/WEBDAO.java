package mc.finalproject.SmartPT.web.dao;

import java.util.ArrayList;

import mc.finalproject.SmartPT.user.vo.RoutineVO;

public interface WEBDAO {

	//tts에 필요한 루틴 정보 가져오기
	public String[] getRoutine(String routine,String id);
	
	//마이루틴에서 보여줄 유저 루틴 정보들 
	public ArrayList<RoutineVO> myRoutine(String id);
}
