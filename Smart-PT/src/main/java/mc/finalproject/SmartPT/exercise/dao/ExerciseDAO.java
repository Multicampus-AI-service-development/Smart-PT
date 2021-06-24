package mc.finalproject.SmartPT.exercise.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;

import mc.finalproject.SmartPT.exercise.vo.ExerciseVO;

public interface ExerciseDAO {
	public List selectAll() throws DataAccessException;
	public List<ExerciseVO> selectExercise(String krExTitle) throws DataAccessException;
}
