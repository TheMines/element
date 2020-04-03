package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.domain.Users;
import com.dto.PageDto;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mapper.UsersMapper;
import com.service.UsersService;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;
@Service
public class UsersServiceImpl implements UsersService{
	@Autowired
	private UsersMapper usersMapper;

	@Override
	public Users login(String user, String pwd) {
		Example example=new Example(Users.class);
		Criteria criteria=example.createCriteria();
		criteria.andEqualTo("uname", user);
		criteria.andEqualTo("upwd", pwd);
		return usersMapper.selectOneByExample(example);
	}

	@Override
	public Users findId(Integer id) {
		// TODO Auto-generated method stub
		return this.usersMapper.selectByPrimaryKey(id);
	}

	@Override
	public PageInfo<Users> findPage(PageDto dto) {
		PageHelper.startPage(dto.getPage(), dto.getPageSize());
		List list=this.usersMapper.selectAll();
		PageInfo<Users> pageInfo=new PageInfo<Users>(list);
		return pageInfo;
	}

	@Override
	public boolean deleteUser(int uid) {
		return this.usersMapper.deleteByPrimaryKey(uid)>0?true:false;
	}

	@Override
	public boolean updateUser(Users user) {
		// TODO Auto-generated method stub
		return this.usersMapper.updateByPrimaryKeySelective(user)>0?true:false;
	}

	@Override
	public boolean addUser(Users user) {
		// TODO Auto-generated method stub
		return this.usersMapper.insertSelective(user)>0?true:false;
	}

}
