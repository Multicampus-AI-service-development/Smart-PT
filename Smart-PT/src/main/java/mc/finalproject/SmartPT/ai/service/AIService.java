package mc.finalproject.SmartPT.ai.service;

import org.springframework.dao.DataAccessException;

public interface AIService {

	public String translate(String words) throws DataAccessException;

	//public String clovaSpeechToText(String language);

	public String SpeechToText(String language);

	public String clovaOCRService(String filePathName);

	public String clovaTextToSpeech(String filePathName, String language);

}
