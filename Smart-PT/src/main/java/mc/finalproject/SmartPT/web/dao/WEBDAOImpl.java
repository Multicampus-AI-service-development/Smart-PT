package mc.finalproject.SmartPT.web.dao;


import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import mc.finalproject.SmartPT.user.vo.RoutineVO;

@Repository
public class WEBDAOImpl implements WEBDAO {

	
	@Override
	public String[] getRoutine(String routine, String id) {
		// TODO Auto-generated method stub
		String str = "팔굽혀펴기,윗몸일으키기,스쿼드,앙기모찌"; //sql세션션에서 루틴만 가져오기
		String[] strAry = str.split(",");
		
		return strAry;
	}

	@Override
	public ArrayList<RoutineVO> myRoutine(String id) {
		// TODO Auto-generated method stub
		return null;
	}


}
