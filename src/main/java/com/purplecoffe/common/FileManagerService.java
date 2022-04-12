package com.purplecoffe.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManagerService {
	
	// 실제 이미지가 저장될 경로
	// 프로젝트 밑에 images 폴더
	public final static String FILE_UPLOAD_PATH = "C:\\7_project\\purplecoffee\\images/";
	
	public String saveFile(String loginId, MultipartFile file) throws IOException {
		// 파일 디렉토리 경로 예: xxxxx_1620995857660/sun.png    
		String directoryName = loginId + "_" + System.currentTimeMillis() + "/";
		String filePath = FILE_UPLOAD_PATH + directoryName;
		
		File directory = new File(filePath); 
		if (directory.mkdir() == false) {
			return null; // 디렉토리 생성 실패시 null 리턴
		}
		
		// 파일 업로드: byte 단위로 업로드한다.
		byte[] bytes = file.getBytes();
		Path path = Paths.get(filePath + file.getOriginalFilename()); // originalFilename은 input에 올린 파일명이다.
		Files.write(path, bytes);
		
		//   예) http://localhost/images/xxxx_1620995857660/sun.png
		return "/images/" + directoryName + file.getOriginalFilename();
	}
}