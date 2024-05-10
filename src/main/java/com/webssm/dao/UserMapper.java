package com.webssm.dao;

import com.webssm.pojo.User;

public interface UserMapper {
    User login(User  user);

    void register(User user);

    void delete(User user);
}
