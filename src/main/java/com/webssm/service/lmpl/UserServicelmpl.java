package com.webssm.service.lmpl;
import com.webssm.service.UserService;

import org.springframework.stereotype.Service;
import com.webssm.dao.UserMapper;
import com.webssm.pojo.User;

import javax.annotation.Resource;

@Service
public class UserServicelmpl implements UserService{
    @Resource
    private UserMapper userMapper;

    @Override
    public User login(User user) {
        return userMapper.login(user);
    }

    @Override
    public void register(User user) {
         userMapper.register(user);
    }

    @Override
    public void delete(User user) {
        userMapper.delete(user);
    }
}
