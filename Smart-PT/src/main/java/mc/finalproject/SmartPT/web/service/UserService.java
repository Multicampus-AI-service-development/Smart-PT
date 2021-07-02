package mc.finalproject.SmartPT.web.service;

import java.util.List;
import java.util.zip.DataFormatException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;

import mc.finalproject.SmartPT.user.vo.RoutineVO;
import mc.finalproject.SmartPT.user.vo.UserVO;

public interface UserService {
	
	public void getRoutine() throws DataFormatException;
	public List<String> myRoutine(String id) throws DataFormatException; 
	public void updateRoutine(ModelMap model , HttpServletRequest request) throws DataFormatException;
	
	
	// ====================== 회원가입
	
	public Integer duplicationCheck(String id) throws DataFormatException;//아이디 중복 확인
	
	public Boolean signUp(UserVO vo)throws DataFormatException;//회원가입 C
	public Boolean login(String id, String pw)throws DataFormatException;//로그인
	public Boolean dropOut(String id, String pw)throws DataFormatException;//탈퇴 D
	public UserVO userRead(String id)throws DataFormatException;//사용자정보 읽기 R
	public Boolean edit(UserVO vo)throws DataFormatException;//사용자정보 수정 U


}
