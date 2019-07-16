package com.bjsxt.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjsxt.pojo.Users;
import com.bjsxt.service.UsersService;

@Controller
public class UsersController {
	@Resource
	private UsersService usersServiceImpl;
	
	@RequestMapping("login")
	public String Login(Users users,HttpServletRequest req,HttpServletResponse resp,String remember) {
		Users u = usersServiceImpl.login(users);
		if(u!=null) {
			//登录成功后我们再获取是否保存密码的信息，如果失败了保存密码就没有意义了
			if(remember!=null&&remember.equals("yes")) {
				try {
					//将用户名和密码加入到cookie中
					Cookie namecookie = new Cookie("name",u.getUsername());
					Cookie passwordCookie = new Cookie("password",u.getPassword());
					//设置cookie的有效期防止销毁
					namecookie.setMaxAge(60*10);
					passwordCookie.setMaxAge(60*10);
					//将cookie发送给客户端保存
					resp.addCookie(namecookie);
					resp.addCookie(passwordCookie);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return "/main.jsp";
		}else {
			req.getSession().setAttribute("flag", "用户名或密码错误");
			return "redirect:/login.jsp";
		}
	}
	@RequestMapping("register")
	public String register(Users users,HttpServletResponse resp) {
		int index = usersServiceImpl.insregister(users);
		if(index>0) {
				return "/login.jsp";
		}else {
			try {
				resp.getWriter().write("注册失败");
			} catch (IOException e) {
				//e.printStackTrace();
			}
			return "redirect:/login.jsp";
		}
	}
	@RequestMapping("checkRegis")
	@ResponseBody
	public void checkRegis(String username,HttpServletResponse resp) throws IOException {
		Users us = usersServiceImpl.checkRegis(username);
		if(us!=null) {
			//ajax调用error,用户名不可以用
			resp.getWriter().write("fail");
		}else {
			//ajax调用success，用户名可以用
			resp.getWriter().write("success");
		}
	}
	
}
