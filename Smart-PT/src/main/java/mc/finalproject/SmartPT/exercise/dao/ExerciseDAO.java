package mc.finalproject.SmartPT.exercise.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface ExerciseDAO {
	public List selectAll() throws DataAccessException;
}
