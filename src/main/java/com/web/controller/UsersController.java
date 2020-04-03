package com.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.domain.Users;
import com.github.pagehelper.PageInfo;
import com.dto.PageDto;
import com.service.UsersService;

@RestController
public class UsersController {
	@Autowired
	private UsersService usersService;
	@RequestMapping("login")
	public Users login(String username,String pass) {
		Users user=this.usersService.login(username, pass);
		return user;
	}
	@RequestMapping("findPage")
	public PageInfo findPage(PageDto dto ,Integer page, Integer pageSize){
		dto.setPage(page);
		dto.setPageSize(pageSize);
	    PageInfo pageInfo=this.usersService.findPage(dto);
		return pageInfo;
	}
	@RequestMapping("deleteUser")
	public boolean deleteUser(Integer uid){
		System.out.println(uid);
		return this.usersService.deleteUser(uid);
	}
	@RequestMapping("updateUser")
	public boolean updateUser(Users user) {
		return this.usersService.updateUser(user);
	}
	@RequestMapping("addUser")
	public boolean addUser(@RequestBody Users userForm) {
		System.out.println(userForm);
		return this.usersService.addUser(userForm);
	}
	
}
