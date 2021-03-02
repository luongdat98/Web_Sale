package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.model.Role;
import com.laptrinhjavaweb.model.User;

import java.util.List;

public interface UserService {
    public boolean isUser(String username, String password);

    public void saveUser(User user);

    public User findByUsername(String username);

    public User findByEmail(String email);

    public boolean checkPassword(String pass, String rePass);

    public List<User> getListUser();

    public void delUser(User user);

    public List<String> listUserAdmin();

    public Role getRole(String roleName);

    public void editUser(User User);

    public User getUserById(Integer id);

}
