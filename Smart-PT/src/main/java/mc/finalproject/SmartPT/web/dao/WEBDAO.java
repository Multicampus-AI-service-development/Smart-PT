package mc.finalproject.SmartPT.web.dao;

import java.util.List;
import java.util.zip.DataFormatException;
import mc.finalproject.SmartPT.user.vo.UserVO;

public interface WEBDAO {

	//tts에 필요한 루틴 정보 가져오기
	public String[] getRoutine(String routine,String id);
	
	//마이루틴에서 보여줄 유저 루틴 정보들 
	public List myRoutine(String id);
	
	
	
	// ===================== 회원가입
	
	public Integer duplicationCheck(String id) throws DataFormatException;//아이디 중복 확인
	
	public Boolean signUp(UserVO vo)throws DataFormatException;
	public Boolean signIn(String id, String pw)throws DataFormatException;//로그인
	public Boolean dropOut(String id, String pw)throws DataFormatException;//탈퇴 D
	public UserVO userRead(String id)throws DataFormatException;//사용자정보 읽기 R
	public UserVO edit(UserVO vo)throws DataFormatException;//사용자정보 수정 U


}
