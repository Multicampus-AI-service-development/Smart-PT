package mc.finalproject.SmartPT.web.service;

import java.util.ArrayList;
import java.util.zip.DataFormatException;

import mc.finalproject.SmartPT.user.vo.RoutineVO;
import mc.finalproject.SmartPT.user.vo.UserVO;

public interface UserService {
	public void signup(UserVO vo)throws DataFormatException;
	public void getRoutine();
	public ArrayList<RoutineVO> myRoutine(String id); 
}
