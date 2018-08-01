package com.bytegriffin.weborz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.bytegriffin.weborz.entity.User;

@Mapper
public interface UserMapper extends BaseMapper<User>{

}
