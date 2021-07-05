package mc.finalproject.SmartPT.web.dao;


import java.util.HashMap;
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
		
		String str = "팔굽혀펴기,윗몸일으키기,스쿼드,앙기모찌"; //sql세션션에서 루틴만 가져오기
		String[] strAry = str.split(",");
		
		return strAry;
	}

	@Override
	public RoutineVO myRoutine(String id) {
		
		return sqlSession.selectOne("mapper.user.myRoutine", id);
	}
	
	// ============================================ 회원가입 & 로그인
	@Override
	public int duplicationCheck(String id) throws DataFormatException{
		int result = 0;
		result = sqlSession.selectOne("mapper.member.checkId", id);
		System.out.println(result);

		//UserVO vo = 마이바티스로 id에 해당하는 값이 있다면 불러오기
		//아니면 null일 때로 비교
		//select  COUNT(*) from pt_member  where id='chlj1101'; 이런식으로 불러올 예정
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
	public void updateRoutineAll(RoutineVO vo) {
		
		sqlSession.update("mapper.user.updateRoutineAll", vo);
	}
	
	@Override
	public List<String> getImaPath(List<String> test) {
		
		return sqlSession.selectList("mapper.user.getImaPath", test);
	}
	
	@Override
	public List<String> getEngName(List<String> test) {
		
		return sqlSession.selectList("mapper.user.getEngName", test);
	}
	
	@Override
	public List<String> getDescription(List<String> test) {
		
		return sqlSession.selectList("mapper.user.getDescription", test);
	}
	
	
	
	// ============================================ 회원가입
	@Override
	public boolean signUp(UserVO vo)throws DataFormatException{
		boolean flag = false;
	    int res = sqlSession.insert("mapper.member.insertMember", vo);
	    if(res == 1){//DB에 정상 저장하면 반환값이 1이기 때문에
	    flag = true;
	    }
	    
	         
	    return flag;   
	 }//회원가입 C
	      
	   @Override
	   public UserVO login(String id, String pw)throws DataFormatException{
		  
	      UserVO vo = new UserVO();
	      vo.setId(id);
	      vo.setPwd(pw);
	      System.out.println(vo.toString());
	      UserVO resVO = new UserVO();
	       resVO = sqlSession.selectOne("mapper.member.login", vo);
//	      if(resVO != null) {
//	    	  return resVO;
//	      }else {
//	    	  
//	      }
	      return resVO;
	       
	    }//로그인
	   
	   @Override
	   public String findId(UserVO vo)throws DataFormatException{
			  
		     
		      System.out.println(vo.toString());
		      UserVO resVO = new UserVO();
		       resVO = sqlSession.selectOne("mapper.member.findId", vo);
//		      
		      return resVO.getId();
		       
		    }//아이디 찾기
	   
	   @Override
	   public String findPw(UserVO vo)throws DataFormatException{
			  
		     
		      System.out.println(vo.toString());
		      UserVO resVO = new UserVO();
		       resVO = sqlSession.selectOne("mapper.member.findPw", vo);
//		      
		      return resVO.getPwd();
		       
		    }//비밀번호 찾기
	   
	   @Override
	   public boolean dropOut(String id, String pw)throws DataFormatException{
		   boolean flag = false;
	      
	      return flag;
	   }//탈퇴 D
	      
	   @Override
	   public UserVO userRead(String id)throws DataFormatException{
	      UserVO userVO = (UserVO)sqlSession.selectOne("mapper.member.selectMemberById", id);
	      //select(id)
	      
	       return userVO;
	   }//사용자정보 읽기 R
	      
	   @Override
	   public boolean edit(UserVO vo)throws DataFormatException{
		   boolean flag = false;  
		   int res = sqlSession.update("mapper.member.updateMember", vo);
	       if(res == 1) {
	    	   flag = true;
	       }else {
	    	   flag = false;
	       }
		   return flag;
	   }//사용자정보 수정 U



}
