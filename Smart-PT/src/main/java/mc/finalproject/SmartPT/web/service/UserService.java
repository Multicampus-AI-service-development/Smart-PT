package mc.finalproject.SmartPT.web.service;

import java.util.List;
import java.util.zip.DataFormatException;

import mc.finalproject.SmartPT.user.vo.UserVO;

public interface UserService {
	public void signup(UserVO vo)throws DataFormatException;
	public void getRoutine();
	public List myRoutine(String id); 
	public Boolean signUp(UserVO vo)throws DataFormatException;
	
	// ====================== 회원가입
	
	public Boolean signIn(String id, String pw)throws DataFormatException;//로그인
	public Boolean dropOut(UserVO vo)throws DataFormatException;//탈퇴 D
	public UserVO userRead(UserVO vo)throws DataFormatException;//사용자정보 읽기 R
	public UserVO edit(UserVO vo)throws DataFormatException;//사용자정보 수정 U

}
