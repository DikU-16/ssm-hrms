package com.bjsxt.advice;

import java.lang.reflect.Method;

import org.apache.log4j.Logger;
import org.springframework.aop.MethodBeforeAdvice;
import org.springframework.stereotype.Component;

import com.bjsxt.pojo.Users;

@Component
public class BeforeAdvice implements MethodBeforeAdvice{

	@Override
	public void before(Method arg0, Object[] arg1, Object arg2) throws Throwable {
		 Users  u= (Users) arg1[0];
         System.out.println(u.getUsername()+"正在登录.........");
         Logger logger=Logger.getLogger(BeforeAdvice.class);
         logger.info(u.getUsername()+"正在登录.........");
		
	}

}
