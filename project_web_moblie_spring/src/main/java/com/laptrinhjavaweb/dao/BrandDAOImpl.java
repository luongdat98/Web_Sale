package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.model.Brand;
import com.laptrinhjavaweb.dao.BrandDAO;
import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class BrandDAOImpl implements BrandDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public Brand findByNameBrand(String name) {
        Session session = null;
        Transaction ts = null;
        try {
            session = sessionFactory.openSession();
            ts = session.beginTransaction();
            List<Brand> users = new ArrayList<Brand>();
            String hql = "FROM Brand b WHERE b.name = :name";
            Query query = session.createQuery(hql);
            query.setParameter("name", name);
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
    public List<Brand> getAllBrands() {
        // Reading the records from the table
        Session session = sessionFactory.openSession();
        List<Brand> brands = session.createCriteria(Brand.class).list();
        System.out.println("------List of Brands------");
        System.out.println(brands);
        // session.flush is used for clear cache in the session
        session.flush();
        // it will close the particular session after completing the process
        session.close();
        return brands;
    }

    @Override
    public Brand getBrandById(Integer brandId) {
        // Reading the records from the table
        Session session = sessionFactory.openSession();
        // select * from Brand where isbn=i
        Brand brand = (Brand) session.get(Brand.class, brandId);
        session.close();
        return brand;
    }

    @Override
    public void deleteBrand(Brand brand) {
        Session session = sessionFactory.openSession();
//        Brand brand = (Brand) session.get(Brand.class, brandId);
        session.saveOrUpdate(brand);
        System.out.println(brand);
        session.flush();
        // close the session
        session.close();


    }

    @Override
    public void addBrandId(Brand brand) {
        Session session = sessionFactory.openSession();
        session.save(brand);
        session.close();

    }

    @Override
    public void editBrand(Brand brand) {
        Session session = sessionFactory.openSession();
        session.saveOrUpdate(brand);
        session.flush();
        session.close();

    }

//    @Override
//    public void deleteBrand(Integer brandId) {
//        Session session = sessionFactory.openSession();
//        Brand brand = (Brand) session.get(Brand.class, brandId);
//        brand.setId(brandId);
//        brand.setActiveFlag(0);
//        brand.setStatus(0);
//        brand.getUpdateDate();
//        session.saveOrUpdate(brand);
//        session.flush();
//        session.close();
//
//
//    }
}
