package com.bjsxt.controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DownController {
	@RequestMapping("/down")
	public String upload(HttpServletRequest req,Model model) throws IOException {
		File dir = new File(req.getServletContext().getRealPath("files"));
	    File[] files = dir.listFiles(); // 该文件目录下文件全部放入数组
	    List<String> list=new ArrayList<>();
	    for (int i = 0; i < files.length; i++) {
             String name = files[i].getName();
             list.add(name);
           }
	    model.addAttribute("list",list);
	    return "/file.jsp";
	}
	@RequestMapping("/delete")
	public String delete(String fileName,HttpServletRequest req) throws IOException {
		File dir = new File(req.getServletContext().getRealPath("files")+"\\"+fileName);
	    dir.delete();
	    return "/down";
	}
	
}
