package com.bytegriffin.weborz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.bytegriffin.weborz.entity.User;
import com.bytegriffin.weborz.mapper.UserMapper;

@Service("userService")
@Transactional(rollbackFor=Throwable.class) 
public class UserService extends ServiceImpl<UserMapper, User>{

	@Autowired
	private UserMapper userDao;

	public User getUserById(String userId) {
		return this.userDao.selectById(userId);
	}

}
