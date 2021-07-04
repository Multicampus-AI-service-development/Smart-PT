package mc.finalproject.SmartPT.web.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.zip.DataFormatException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.mysql.cj.util.StringUtils;

import mc.finalproject.SmartPT.user.vo.RoutineVO;
import mc.finalproject.SmartPT.user.vo.UserVO;
import mc.finalproject.SmartPT.web.dao.WEBDAO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	WEBDAO dao;

	//tts에 필요한 루틴 정보 가져오기
	@Override
	public void getRoutine() {
		// TODO Auto-generated method stub
		String[] routine = dao.getRoutine(null, null);
		System.out.println(routine);
	}
	//마이루틴에서 보여줄 유저 루틴 정보들 
	@Override
	public HashMap<String,List<String>> myRoutine(String id) {
		
		RoutineVO vo = dao.myRoutine(id); 
		
		List<String> temp = new ArrayList<String>();
		
		temp.addAll(Arrays.asList(vo.getNeck().split(",")));
		temp.addAll(Arrays.asList(vo.getWaist().split(",")));
		temp.addAll(Arrays.asList(vo.getPelvis().split(",")));
		temp.addAll(Arrays.asList(vo.getCore().split(",")));
		
		String str = String.join(",", temp);
		vo.setRoutineAll(str);
		
		dao.updateRoutineAll(vo);
		
		List<String> checkData = Arrays.asList(vo.getRoutineAll().split(","));
		
		List<String> routineName = new ArrayList<String>();
		
		for(String test:checkData) {
			routineName.add(test.trim());
		}
		
		HashMap<String,List<String>> resultData = new HashMap<String,List<String>>();
		
		resultData.put("routineName", routineName);
		resultData.put("engName", dao.getEngName(routineName));
		resultData.put("imaPath", dao.getImaPath(routineName));
		resultData.put("description", dao.getDescription(routineName));
		
		return resultData;
	}
	
	//마이루틴 수정	
	@Override
	public void updateRoutine(ModelMap model , HttpServletRequest request) {
		
		//선택한 루틴 값
		String[] check = request.getParameterValues("item");
		for(int i=0; i<check.length; i++){
//		System.out.println(check[i]+",");
		}
		
		String temp = Arrays.toString(check);
		
		RoutineVO vo = new RoutineVO();
		vo.setUserId("1");
		
		//카테고리 값
		String[] category = request.getParameterValues("radio");
		String radio = Arrays.toString(category);
		
		vo.setRoutineAll(temp.substring(1, temp.length()-1));
		
		switch(radio) {
		
		case "[neck]":   vo.setNeck(temp.substring(1, temp.length()-1));
					     dao.updateNeck(vo);
					     break;
			
		case "[waist]":  vo.setWaist(temp.substring(1, temp.length()-1));
						 dao.updateWaist(vo);
						 break;	
			
		case "[pelvis]": vo.setPelvis(temp.substring(1, temp.length()-1));
						 dao.updatePelvis(vo);
						 break;
			
		case "[core]":   vo.setCore(temp.substring(1, temp.length()-1));
						 dao.updateCore(vo);
						 break;
		}
		
	}
	
	// ========================== 회원가입 & 로그인
	@Override
	public int duplicationCheck(String id) throws DataFormatException{
		int result = dao.duplicationCheck(id);
		
		return result;
	}//아이디 중복 확인
	
	@Override
	public boolean signUp(UserVO vo)throws DataFormatException{
		boolean flag = false;
	    flag = dao.signUp(vo);
	      
	    return flag;   
	}//회원가입 C
	      
	@Override
	public UserVO login(String id, String pw)throws DataFormatException{
		//Boolean flag = false;
	    UserVO vo = new UserVO();
		vo = dao.login(id, pw);
	    return vo;      
	}//로그인
	   
	@Override
	public boolean dropOut(String id, String pw)throws DataFormatException{
		boolean flag = false;
	    flag = dao.dropOut(id, pw);
	    return flag;
    }//탈퇴 D
	      
	@Override
	public UserVO userRead(String id)throws DataFormatException{
		UserVO userVO = null;
	    userVO = dao.userRead(id);
	    return userVO;
    }//사용자정보 읽기 R
	      
	@Override
    public boolean edit(UserVO vo)throws DataFormatException{
		boolean flag = false;
		flag = dao.edit(vo);
	    return flag;
	}//사용자정보 수정 U

	@Override
	public String findId(UserVO vo)throws DataFormatException{
		String res = dao.findId(vo);
		      
		return res;
		       
	}//아이디 찾기
	@Override
	public String findPw(UserVO vo)throws DataFormatException{
		String res = dao.findPw(vo);
		      
		return res;
		       
	}//비밀번호 찾기  
	   	
}
