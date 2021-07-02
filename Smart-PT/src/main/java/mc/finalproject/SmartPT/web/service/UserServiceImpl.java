package mc.finalproject.SmartPT.web.service;

import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.DataFormatException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

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
	public List<String> myRoutine(String id) {
		
		RoutineVO temp = dao.myRoutine(id); //sql세션에서 루틴만 가져오기
		List<String> resultData = Arrays.asList(temp.getRoutineName().split(","));
	
		return resultData;
	}
	
	//마이루틴 수정
	@Override
	public void updateRoutine(ModelMap model , HttpServletRequest request) {
		
		String[] check = request.getParameterValues("item");
		for(int i=0; i<check.length; i++){
			request.getAttribute("name");
//		System.out.println(check[i]+",");
		}
		
		System.out.println(request.getParameterValues("button"));
		
		String temp = Arrays.toString(check);
		
		RoutineVO vo = new RoutineVO();
		vo.setUserId("1");
		vo.setRoutineName(temp.substring(1, temp.length()-1));
		
		dao.updateRoutine(vo);
	}
	
	// ========================== 회원가입 & 로그인
	@Override
	public Integer duplicationCheck(String id) throws DataFormatException{
		int result = dao.duplicationCheck(id);
		
		return result;
	}//아이디 중복 확인
	
	@Override
	public Boolean signUp(UserVO vo)throws DataFormatException{
		Boolean flag = false;
	    flag = dao.signUp(vo);
	      
	    return flag;   
	}//회원가입 C
	      
	@Override
	public Boolean login(String id, String pw)throws DataFormatException{
		Boolean flag = false;
	    flag = dao.login(id, pw);
	    return flag;      
	}//로그인
	   
	@Override
	public Boolean dropOut(String id, String pw)throws DataFormatException{
		Boolean flag = false;
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
    public Boolean edit(UserVO vo)throws DataFormatException{
		Boolean flag = false;
		flag = dao.edit(vo);
	    return flag;
	}//사용자정보 수정 U

	
}
