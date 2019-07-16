package com.bjsxt.controller;


import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class UploadController {
	@RequestMapping("/upload")
	public String upload(MultipartFile file,HttpServletRequest req,Model model) throws IOException {
		String fileName=file.getOriginalFilename();
		FileUtils.copyInputStreamToFile(file.getInputStream(), new File(req.getServletContext().getRealPath("files")+"\\"+fileName));
		return "/down";
	}
}
