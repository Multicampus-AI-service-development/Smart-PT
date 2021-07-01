package mc.finalproject.SmartPT.web.dao;

import java.util.List;
import java.util.zip.DataFormatException;

import mc.finalproject.SmartPT.user.vo.RoutineVO;
import mc.finalproject.SmartPT.user.vo.UserVO;

public interface WEBDAO {

	//tts에 필요한 루틴 정보 가져오기
	public String[] getRoutine(String routine,String id);
	
	//마이루틴에서 보여줄 유저 루틴 정보들 
	public RoutineVO myRoutine(String id);
	
	//마이루틴 수정
	public void updateNeck(RoutineVO vo);
	public void updateWaist(RoutineVO vo);
	public void updatePelvis(RoutineVO vo);
	public void updateCore(RoutineVO vo);
	
	public void updateRoutineAll(RoutineVO vo);
	
	public List<String> test(List<String> test);
	
	
	// ===================== 회원가입
	
	public Boolean signUp(UserVO vo)throws DataFormatException;
	public Boolean signIn(String id, String pw)throws DataFormatException;//로그인
	public Boolean dropOut(String id, String pw)throws DataFormatException;//탈퇴 D
	public UserVO userRead(String id)throws DataFormatException;//사용자정보 읽기 R
	public UserVO edit(UserVO vo)throws DataFormatException;//사용자정보 수정 U


}
