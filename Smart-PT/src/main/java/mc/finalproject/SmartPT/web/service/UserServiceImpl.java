package mc.finalproject.SmartPT.web.service;

import java.util.List;
import java.util.zip.DataFormatException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public List myRoutine(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// ========================== 회원가입 & 로그인
	
	@Override
	public Boolean signUp(UserVO vo)throws DataFormatException{
		Boolean flag = false;
	    flag = dao.signUp(vo);
	      
	      
	    return flag;   
	}//회원가입 C
	      
	@Override
	public Boolean signIn(String id, String pw)throws DataFormatException{
		Boolean flag = false;
	    flag = dao.signIn(id, pw);
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
    public UserVO edit(UserVO vo)throws DataFormatException{
		UserVO userVO = null;
	    userVO = dao.edit(vo);
	    return userVO;
	}//사용자정보 수정 U

	
}
