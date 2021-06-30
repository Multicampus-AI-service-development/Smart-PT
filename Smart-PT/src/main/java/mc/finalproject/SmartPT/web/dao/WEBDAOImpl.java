package mc.finalproject.SmartPT.web.dao;


import java.util.List;
import java.util.zip.DataFormatException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mc.finalproject.SmartPT.user.vo.RoutineVO;
import mc.finalproject.SmartPT.user.vo.UserVO;

@Repository("memberDAO")
public class WEBDAOImpl implements WEBDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public String[] getRoutine(String routine, String id) {
		// TODO Auto-generated method stub
		String str = "팔굽혀펴기,윗몸일으키기,스쿼드,앙기모찌"; //sql세션션에서 루틴만 가져오기
		String[] strAry = str.split(",");
		
		return strAry;
	}

	@Override
	public List myRoutine(String id) {
		// TODO Auto-generated method stub
		List<RoutineVO> list = null;
		return list;
	}
	
	// ============================================ 회원가입 & 로그인
	@Override
	public Integer duplicationCheck(String id) throws DataFormatException{
		int result = 0;
		result = sqlSession.selectOne("mapper.member.checkId", id);
		System.out.println(result);

		String testId = "chlj1101";
		//select  COUNT(*) from pt_member  where id='chlj1101'; 이런식으로 불러올 예정
		//UserVO vo = 마이바티스로 id에 해당하는 값이 있다면 불러오기
		//아니면 null일 때로 비교
		if(result == 1) {
			//result = 1;
			System.out.println("중복");
		}//아이디 중복 될 때
		else {
			//result = 0;
			System.out.println("가능");
		}//아이디가 중복되지 않을 때
		
		return result;
	}//아이디 중복 확인
	
	@Override
	public Boolean signUp(UserVO vo)throws DataFormatException{
		Boolean flag = false;
	    int res = sqlSession.insert("mapper.member.insertMember", vo);
	    if(res == 1){//DB에 정상 저장하면 반환값이 1이기 때문에
	    flag = true;
	    }
	    
	         
	    return flag;   
	 }//회원가입 C
	      
	   @Override
	   public Boolean signIn(String id, String pw)throws DataFormatException{
	      Boolean flag = false;
	      String testId = "chlj1101";
	      String testPw = "dd123";
	      
	      if(id == testId) {
	    	  if(pw == testPw) {
	    		  flag = true;
	    	  }
	    	  else {
	    		  flag = false;
	    	  }
	      }else {
	    	  flag = false;
	      }
	      
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
