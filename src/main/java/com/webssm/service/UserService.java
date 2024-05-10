package com.webssm.service;

import com.webssm.pojo.User;

public interface UserService {

    User login(User  user);

    void register(User user);

    void delete(User user);
}
