package com.bjsxt.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.bjsxt.pojo.Users;

public interface UsersMapper {
	@Select("select * from users where username=#{username} and password=#{password}")
	Users SelAll(Users users);
	
	@Insert("insert into users values(default,#{username},#{password})")
	 int insUsers(Users users);
	
	@Select("select * from users where username=#{username}")
	Users selByName(String username);
}
