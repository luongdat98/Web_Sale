package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.model.Role;
import com.laptrinhjavaweb.model.User;
import com.laptrinhjavaweb.model.User;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository

public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public User findByUsername(String username) {
        Session session = null;
        Transaction ts = null;
        try {
            session = sessionFactory.openSession();
            ts = session.beginTransaction();
            List<User> users = new ArrayList<User>();
            String hql = "FROM User u WHERE u.username = :name";
            Query query = session.createQuery(hql);
            query.setParameter("name", username);
            users = query.list();
            if (users.size() > 0) {
                return users.get(0);
            }
            ts.commit();
            session.close();
        } catch (HibernateException e) {
            e.printStackTrace();

        }
        return null;
    }


    @Override
    public User findByEmail(String email) {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<User> users = new ArrayList<User>();
            String hql = "FROM User u WHERE u.email = :emailInput";
            Query query = session.createQuery(hql);
            query.setParameter("emailInput", email);
            users = query.list();
            if (users.size() > 0) {
                return users.get(0);
            }
            session.close();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void saveUser(User user) {
        Session session = sessionFactory.openSession();
        Transaction ts = null;

        user.setActiveFlag(1);
        user.setCreaDate(new Timestamp(new Date(System.currentTimeMillis()).getTime()));
        user.setUpdateDate(new Timestamp(new Date(System.currentTimeMillis()).getTime()));


        try {
            ts = session.beginTransaction();
            session.save(user);
            ts.commit();
            System.out.println("Thanh cong");
        } catch (Exception ex) {
            if (ts != null) {
                ts.rollback();
                ex.printStackTrace();
            }

        } finally {
            session.close();
        }

    }

    @Override
    public boolean checkPassword(String pass, String rePass) {
        if (!pass.equalsIgnoreCase(rePass))
            return false;
        return true;
    }

    @Override
    public List<User> getListUser() {
        ArrayList<User> listUser = new ArrayList<User>();
        Session session = sessionFactory.openSession();
        listUser = (ArrayList<User>) session.createCriteria(User.class)/*.add(Restrictions.eq("activeFlag", 1))*/.list();
        System.out.println("========list user=======");
        System.out.println(listUser);
        session.flush();
        session.close();
        return listUser;
    }

    @Override
    public void delUser(User user) {
        Session session = sessionFactory.openSession();
        session.saveOrUpdate(user);
        System.out.println("user deleted: " + user);
        session.flush();
        session.close();
    }

    @Override
    public List<String> listUserAdmin() {
        List<String> result = new ArrayList<>();
        Session session = sessionFactory.getCurrentSession();
        String hql = "select u.username from User u join u.listRole r where r.id = :roleid";
        Query query = session.createQuery(hql).setParameter("roleid", 1);
        result = query.list();
        return result;
    }

    @Override
    public Role getRole(String roleName) {
        Role role;
        Session session = sessionFactory.openSession();
        role = (Role) session.createCriteria(Role.class).add(Restrictions.eq("roleName", roleName)).uniqueResult();
        session.close();
        return role;
    }

    @Override
    public void editUser(User user) {
        Session session = sessionFactory.openSession();
        session.saveOrUpdate(user);
        session.flush();
        session.close();

    }

    @Override
    public User getUserById(Integer id) {
        Session session = sessionFactory.openSession();
        User user = (User) session.get(User.class, id);
        session.close();
        return user;
    }


    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


}
