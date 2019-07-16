package com.bjsxt.service;

import com.bjsxt.pojo.Users;

public interface UsersService {
	/**
	 * 登录
	 * @param users
	 * @return
	 */
	Users login(Users users);
	
	/**
	 * 注册
	 * @param users
	 * @return
	 */
	int insregister(Users users);
	/**
	 * 校验用户名
	 * @param uname
	 * @return
	 */
	Users checkRegis(String username);
}
