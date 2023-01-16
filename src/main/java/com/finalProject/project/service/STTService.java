package com.finalProject.project.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class STTService {
    public String stt(String filePathName) {
		String result = "";
				
		String clientId = "ex1gnhch78";             // Application Client ID";
        String clientSecret = "PZ5HN03K9F0jwaDgj1oSGaaI4yZO1K3SQVS1enES";     // Application Client Secret";

        try {
            String imgFile = filePathName;
            File voiceFile = new File(imgFile);

            String language = "Kor";        // 언어 코드 ( Kor, Jpn, Eng, Chn )
            String apiURL = "https://naveropenapi.apigw.ntruss.com/recog/v1/stt?lang=" + language;
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
            if(responseCode == 200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            } else {  // 오류 발생
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
                System.out.println(response.toString()); // 반환된 결과 출력 : 텍스트
                // jsonToString() 호출하고 결과 출력
                result = jsonToString(response.toString());
                System.out.println(result);
                
                // JSON 파싱한 결과를 파일로 저장 : 파일 저장 함수 호출
                //resultToFileSave(result); // FileWriter 사용하는 경우
                resultToFileSave(result); // FileOutputStream 사용하는 경우
            } else {
                System.out.println("error !!!");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return result;
	}
	

	// JSON 파싱 메소드 : 반환된 결과 값 받아서 텍스트 추출해서 반환 : jsonToString() 
	public String jsonToString(String jsonResultStr) {
		String result = new JSONObject(jsonResultStr).getString("text");
		return result;
	}
	
	// JSON 파싱한 결과를 텍스트 파일로 저장하는 메소드 
	//(1) FilewWriter 클래스 사용
	public void resultToFileSave(String result) {	
		try {
			// 파일명 : stt_현재시간숫자.txt (동일 파일명 생성하지 않도록 랜덤숫자 생성해서 사용)
			// 시간을 기반으로 생성된 숫자이므로 시간이 지남에 따라 계속 달라짐
			String fileName = Long.valueOf(System.currentTimeMillis()).toString();
			//String fileName = Long.valueOf(new Date().getTime()).toString(); // 위와 동일한 값
			String filePathName = "C:/springWorkspace/ai_images/" + "stt_" + fileName + ".txt";
			
			// FileWriter 사용
			FileWriter fw = new FileWriter(filePathName);
			fw.write(result);
			fw.close();
		} catch (IOException e) {
		}
	}

}
