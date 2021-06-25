package mc.finalproject.SmartPT.exercise.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import mc.finalproject.SmartPT.exercise.vo.ExerciseVO;

@Repository("exerciseDAO")
public class ExerciseDAOImpl implements ExerciseDAO {
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public List selectAll() throws DataAccessException {
		List<ExerciseVO> exerciseList = null;
		
		exerciseList = sqlSession.selectList("mapper.test.selectAll");
		return exerciseList;
	}

	@Override
	public List<ExerciseVO> selectExercise(String krExTitle) throws DataAccessException {
		List<ExerciseVO> exerciseList = null;
		System.out.println("selectExercise in");
		exerciseList = sqlSession.selectList("mapper.test.selectExercise", krExTitle);
		System.out.println(exerciseList);
		return exerciseList;
	}
}
