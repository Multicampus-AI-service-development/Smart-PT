package mc.finalproject.SmartPT.web.service;

import java.util.ArrayList;
import java.util.zip.DataFormatException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mc.finalproject.SmartPT.user.vo.RoutineVO;
import mc.finalproject.SmartPT.user.vo.UserVO;
import mc.finalproject.SmartPT.web.dao.WEBDAO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	WEBDAO dao;
	
	@Override
	public void signup(UserVO vo)throws DataFormatException{
		
	}

	//tts에 필요한 루틴 정보 가져오기
	@Override
	public void getRoutine() {
		// TODO Auto-generated method stub
		String[] routine = dao.getRoutine(null, null);
		System.out.println(routine);
	}
	//마이루틴에서 보여줄 유저 루틴 정보들 
	@Override
	public ArrayList<RoutineVO> myRoutine(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// ==========================
	
	@Override
	public Boolean signUp(UserVO vo)throws DataFormatException{
		Boolean flag = false;
	   
		return flag;   
	}//회원가입 C
	   
	@Override
	public Boolean signIn(String id, String pw)throws DataFormatException{
		Boolean flag = false;
	   
		return flag;      
	}//로그인
	
	@Override
	public Boolean dropOut(UserVO vo)throws DataFormatException{
		Boolean flag = false;
	      
		return flag;
	}//탈퇴 D
	   
	@Override
	public UserVO userRead(UserVO vo)throws DataFormatException{
		UserVO userVO = null;
	      
		return userVO;
	}//사용자정보 읽기 R
	   
	@Override
	public UserVO edit(UserVO vo)throws DataFormatException{
		UserVO userVO = null;
	      
		return userVO;
	}//사용자정보 수정 U

	
}
