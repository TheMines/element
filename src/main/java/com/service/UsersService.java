package com.service;

import com.domain.Users;
import com.github.pagehelper.PageInfo;
import com.dto.PageDto;

public interface UsersService {
	public Users login(String user,String pwd);
	public Users findId(Integer id);
	public PageInfo<Users> findPage(PageDto dto);
	public boolean deleteUser(int uid);
	public boolean updateUser(Users user);
	public boolean addUser(Users user);
	
}
