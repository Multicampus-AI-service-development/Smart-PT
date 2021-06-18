package mc.finalproject.SmartPT.ai.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Date;

import org.springframework.stereotype.Service;

@Service("hytest")
public class hytest {
	public String clovaTextToSpeech(String stepMsg) {
		String result = null;
		
		String clientId = "dhmge0vn1o";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "nf3rJZkgRdHqyWrEmO3YMhhhmNcMKxoZo3ANRt7X";//애플리케이션 클라이언트 시크릿값";
        try {
//        	File file = new File(filePathName);
//        	FileReader fr = new FileReader(file);
//        	BufferedReader br1 = new BufferedReader(fr);
        	StringBuffer sb = new StringBuffer();
        	String temp = null;
//        	while((temp=br1.readLine())!=null) {
//        		sb.append(temp);
//        	}
//        	sb.append("안녕하세오. 빅스비애오. 그만 좀 부르세오. 감사해오.");
        	sb.append(stepMsg);
        	String language = "nara";
//        	br1.close();
//        	fr.close();
        	
            String text = URLEncoder.encode(sb.toString(), "UTF-8"); // 13자
            String apiURL = "https://naveropenapi.apigw.ntruss.com/tts-premium/v1/tts";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
            // post request
            String postParams = "speaker=" + language + "&volume=0&speed=0&pitch=0&emotion=0&format=mp3&text=" + text;
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
                File f = new File("C:/ai/" + result);
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
}
