package mc.finalproject.SmartPT.ai.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Date;
import java.util.UUID;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("aiService")
@Transactional(propagation = Propagation.REQUIRED)
public class AIServiceImpl implements AIService {
	@Override
	public String welcome(String welcomeMsg) {
		String result = this.stepTTS(welcomeMsg);
		System.out.println(result);
		return result;
	}
	
	@Override
	public String stepTTS(String stepMsg) {
		String result = null;
		
		String clientId = "dhmge0vn1o";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "nf3rJZkgRdHqyWrEmO3YMhhhmNcMKxoZo3ANRt7X";//애플리케이션 클라이언트 시크릿값";
        try {
        	StringBuffer sb = new StringBuffer();
        	String temp = null;
//        	sb.append("안녕하세오. 빅스비애오. 그만 좀 부르세오. 감사해오.");
        	sb.append(stepMsg); // 파일에서 문자열 읽어오는 것 대체
        	String language = "nara";
        	
            String text = URLEncoder.encode(sb.toString(), "UTF-8"); // 13자
            String apiURL = "https://naveropenapi.apigw.ntruss.com/tts-premium/v1/tts";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
            // post request
            String postParams = "speaker=" + language + "&volume=0&speed=2&pitch=0&emotion=0&format=mp3&text=" + text;
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                InputStream is = con.getInputStream();
                int read = 0;
                byte[] bytes = new byte[1024];
                // 랜덤한 이름으로 mp3 파일 생성
                String tempname = Long.valueOf(new Date().getTime()).toString();
                result = "nais-voice-" + tempname + ".mp3";
//                result = "TTS_Message.mp3";
                File f = new File("C:/ai/" + result); // for local
//                File f = new File("C:/ai/" + "TTS_Message.mp3");
//                File f = new File("~/ai/" + result); // for remote server
                f.createNewFile();
                OutputStream outputStream = new FileOutputStream(f);
                while ((read =is.read(bytes)) != -1) {
                    outputStream.write(bytes, 0, read);
                }
                outputStream.flush();
                outputStream.close();
                is.close();
            } else {  // 오류 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
                String inputLine;
                StringBuffer response = new StringBuffer();
                while ((inputLine = br.readLine()) != null) {
                    response.append(inputLine);
                }
                br.close();
                System.out.println(response.toString());
                result = response.toString();
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return result;
	}
	
	
	@Override
	public String SpeechToText(String language) {
		// TODO Auto-generated method stub
		String clientId = "p2e6gctdgm";             // Application Client ID";
        String clientSecret = "iMZJArGrjD17NnTrudNVhjMqKImVW5lAHt49Lxma";     // Application Client Secret";
        String result = null;
        try {
//            String imgFile = filePathName;
//        	String imgFile = "c:/Users/xsrsx/Downloads/voiceMsg.mp3";		// c:/Users/wo779/Downloads/voiceMsg.mp3 파일을 재생하게 만들었음.
        	String imgFile = "C:/ai/" + "Record_Message.mp3";
            File voiceFile = new File(imgFile);

            //String language = "Kor";        // �뼵�뼱 肄붾뱶 ( Kor, Jpn, Eng, Chn )
            String apiURL = "https://naveropenapi.apigw.ntruss.com/recog/v1/stt?lang="+language;
            URL url = new URL(apiURL);

            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            conn.setUseCaches(false);
            conn.setDoOutput(true);
            conn.setDoInput(true);
            conn.setRequestProperty("Content-Type", "application/octet-stream");
            conn.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
            conn.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);

            OutputStream outputStream = conn.getOutputStream();
            FileInputStream inputStream = new FileInputStream(voiceFile);
            byte[] buffer = new byte[4096];
            int bytesRead = -1;
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
            outputStream.flush();
            inputStream.close();
            BufferedReader br = null;
            int responseCode = conn.getResponseCode();
            if(responseCode == 200) { // �젙�긽 �샇異�
                br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            } else {  // �삤瑜� 諛쒖깮
                System.out.println("error!!!!!!! responseCode= " + responseCode);
                br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            }
            String inputLine;
            
            if(br != null) {
                StringBuffer response = new StringBuffer();
                while ((inputLine = br.readLine()) != null) {
                    response.append(inputLine);
                }
                br.close();
                System.out.println(response.toString());
                result = response.toString();
            } else {
                System.out.println("error !!!");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
      
		return result;
	}


	
}
