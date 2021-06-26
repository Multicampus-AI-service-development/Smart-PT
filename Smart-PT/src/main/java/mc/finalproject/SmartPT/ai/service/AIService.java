package mc.finalproject.SmartPT.ai.service;

public interface AIService {
	public String stepTTS(String stepMsg);
	
	public String clovaTextToSpeech(String filePathName, String language);
	public String clovaOCRService(String filePathName);
	public String clovaSpeechToText(String filePathName, String language);
	public String translateWords(String words) throws Exception;
}
