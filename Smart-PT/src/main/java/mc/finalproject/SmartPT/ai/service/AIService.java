package mc.finalproject.SmartPT.ai.service;

import org.springframework.dao.DataAccessException;

public interface AIService {
	public String welcome(String welcoemMsg);
	public String stepTTS(String stepMsg, int speed);
	public String SpeechToText(String language);
}
