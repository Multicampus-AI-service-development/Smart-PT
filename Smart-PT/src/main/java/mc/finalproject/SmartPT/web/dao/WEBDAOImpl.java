package mc.finalproject.SmartPT.web.dao;


import java.util.List;
import java.util.zip.DataFormatException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession;

import mc.finalproject.SmartPT.user.vo.RoutineVO;
import mc.finalproject.SmartPT.user.vo.UserVO;

@Repository
public class WEBDAOImpl implements WEBDAO {
	
	@Autowired
	private SqlSession sqlSession;

	
	@Override
	public String[] getRoutine(String routine, String id) {
		
		String str = "팔굽혀펴기,윗몸일으키기,스쿼드,앙기모찌"; //sql세션션에서 루틴만 가져오기
		String[] strAry = str.split(",");
		
		return strAry;
	}

	@Override
	public RoutineVO myRoutine(String id) {
		
		return sqlSession.selectOne("mapper.user.myRoutine", id);
	}
	
	@Override
	public void updateNeck(RoutineVO vo) {
		
		sqlSession.update("mapper.user.updateNeck", vo);
	}
	
	@Override
	public void updateWaist(RoutineVO vo) {
		
		sqlSession.update("mapper.user.updateWaist", vo);
	}
	
	@Override
	public void updatePelvis(RoutineVO vo) {
		
		sqlSession.update("mapper.user.updatePelvis", vo);
	}
	
	@Override
	public void updateCore(RoutineVO vo) {
		
		sqlSession.update("mapper.user.updateCore", vo);
	}
	
	@Override
	public void updateRoutine(RoutineVO vo) {
		
		sqlSession.update("mapper.user.updateRoutine", vo);
	}
	
	
	
	// ============================================ 회원가입
	
	@Override
	public Boolean signUp(UserVO vo)throws DataFormatException{
		Boolean flag = false;
	         
	    //if(insert(vo) == 1){DB에 정상 저장하면 반환값이 1이기 때문에
	    //flag = true;
	    //}
	         
	    return flag;   
	 }//회원가입 C
	      
	   @Override
	   public Boolean signIn(String id, String pw)throws DataFormatException{
	      Boolean flag = false;
	       
	       return flag;      
	    }//로그인
	      
	   @Override
	   public Boolean dropOut(String id, String pw)throws DataFormatException{
	      Boolean flag = false;
	         
	      return flag;
	   }//탈퇴 D
	      
	   @Override
	   public UserVO userRead(String id)throws DataFormatException{
	      UserVO userVO = null;
	       
	      //select(id)
	      
	       return userVO;
	   }//사용자정보 읽기 R
	      
	   @Override
	   public UserVO edit(UserVO vo)throws DataFormatException{
	      UserVO userVO = null;
	         
	       return userVO;
	   }//사용자정보 수정 U



}
