package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dao.UserDAO;
import com.laptrinhjavaweb.model.Role;
import com.laptrinhjavaweb.model.User;
import com.laptrinhjavaweb.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;

    public boolean isUser(String username, String password) {
        User user = userDAO.findByUsername(username);
        if (user != null && user.getPassword().equals(password)&& (user.getActiveFlag() == 1)) {
            return true;
        }
        return false;
    }

    @Transactional
    public void saveUser(User user) {
        userDAO.saveUser(user);
    }

    @Transactional
    public User findByUsername(String username) {
        return userDAO.findByUsername(username);
    }


    @Transactional
    public User findByEmail(String email) {
        return userDAO.findByEmail(email);
    }

    @Transactional
    public boolean checkPassword(String pass, String rePass) {
        return userDAO.checkPassword(pass,rePass);
    }

    @Transactional
    public List<User> getListUser() {
        return userDAO.getListUser();
    }

    @Transactional
    public void delUser(User user) {
        user.setActiveFlag(0);
        userDAO.delUser(user);
    }

    @Transactional
    public List<String> listUserAdmin() {
        return userDAO.listUserAdmin();
    }

    @Transactional
    public Role getRole(String roleName) {
        return userDAO.getRole(roleName);
    }

    @Transactional
    public void editUser(User user) {
        user.setActiveFlag(1);
        user.setUpdateDate(new Timestamp(new Date(System.currentTimeMillis()).getTime()));
        userDAO.editUser(user);
    }



    @Transactional
    public User getUserById(Integer id) {
        return userDAO.getUserById(id);
    }


    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public static void main(String[] args) {
        UserServiceImpl userService = new UserServiceImpl();
        for(String st: userService.listUserAdmin()){
            System.out.println(st);
        }
    }

}
