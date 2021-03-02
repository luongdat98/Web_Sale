package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.model.Role;
import com.laptrinhjavaweb.model.User;

import java.util.List;


public interface UserDAO {
    public User findByUsername(String username);

    public User findByEmail(String email);

    public void saveUser(User user);

    public boolean checkPassword(String pass, String rePass);

    public List<User> getListUser();

    public void delUser(User user);

    public List<String> listUserAdmin();

    public Role getRole(String roleName);

    public void editUser(User user);

    public User getUserById(Integer id);

}
