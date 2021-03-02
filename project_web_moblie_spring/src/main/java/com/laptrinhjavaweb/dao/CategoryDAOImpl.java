package com.laptrinhjavaweb.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDAOImpl implements CategoryDAO{
    // Nhớ tiêm SessionFactory để tạo session.
    @Autowired
    private SessionFactory sessionFactory;

    // Thực hiện phương thức lấy danh sách thể loại (Category).
    // Phương thức trả về một danh sách.
    @Override
    public List getListCategory() {
        return sessionFactory.getCurrentSession().createQuery("FROM Category").list();
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
