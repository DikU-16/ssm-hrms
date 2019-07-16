package com.bjsxt.advice;

import java.lang.reflect.Method;

import org.apache.log4j.Logger;
import org.springframework.aop.AfterReturningAdvice;
import org.springframework.stereotype.Component;

import com.bjsxt.pojo.Users;


@Component
public class AfterAdvice   implements AfterReturningAdvice{
	//给登录之后的操作
	@Override
	public void afterReturning(Object arg0, Method arg1, Object[] arg2, Object arg3) throws Throwable {
	
		    Users  u= (Users) arg2[0];
            System.out.println(u.getUsername()+"登录成功................");
            Logger logger=Logger.getLogger(AfterAdvice.class);
            logger.info(u.getUsername()+"登录成功..............");
	}

}
