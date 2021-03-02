package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.model.Product;
import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductDAOImpl implements ProductDAO{
    @Autowired
    private SessionFactory sessionFactory;

    // Viết câu query lấy danh sách sản phẩm bởi thể loại (Category).
    private StringBuffer sqlProductByIdCategory(int idCategory){
        StringBuffer sql = new StringBuffer();
        sql.append("FROM Product ");
        sql.append("WHERE 1=1 ");
        sql.append("AND categoryId = ");
        sql.append(idCategory);
        return sql;
    }
    // Viết phương thức lấy danh sách sản phẩm bởi thể loại (Category).
    @Override
    public List<Product> getListProductByCategory(int categoryId) {
        StringBuffer sql = sqlProductByIdCategory(categoryId);
        List<Product> list = (List<Product>) sessionFactory.getCurrentSession().createQuery(String.valueOf(sql)).list();
        return list ;
    }


    // Viết câu query lấy sản phẩm bởi id sản phẩm.
    private StringBuffer sqlProductByIdProduct(int idProduct) {
        StringBuffer sql = new StringBuffer();
        sql.append("FROM Product ");
        sql.append("WHERE 1=1 ");
        sql.append("AND id = ");
        sql.append(idProduct);
        return sql;

    }
    // Viết phương thức lấy sản phẩm bởi id sản phẩm.
    @Override
    public Product getProductByIdProduct(int productId) {
        StringBuffer sql = sqlProductByIdProduct(productId);
        Product product = (Product) sessionFactory.getCurrentSession().get(Product.class, productId);
        return product ;
    }

    // Phương thức viết cho trang admin:

    // Phương thức hiển thị danh sách sản phẩm.
//    @Override
//    public List getListProduct() {
//        return  sessionFactory.getCurrentSession().createQuery("FROM Product").list();
//    }

    // Viết phương thức hiển thị danh sách sản phẩm.
    @Override
    public List<Product> getListProduct() {
        return  (List<Product>) sessionFactory.getCurrentSession().createQuery("FROM Product").list();
    }

    // Viết phương thức xóa sản phẩm.
    @Override
    public void deleteProduct(Product product) {
        Session session = sessionFactory.openSession();
        session.saveOrUpdate(product);
        System.out.println(product);
        session.flush();
        session.close();
    }

    // Viết phương thức thêm sản phẩm
    @Override
    public void addProduct(Product product) {
//        sessionFactory.getCurrentSession().save(product);
        Session session = sessionFactory.openSession();
        session.save(product);
        session.close();
    }

    // Viết phương thức sửa sản phẩm.
    @Override
    public void editProduct(Product product) {
        Session session = sessionFactory.openSession();
        session.saveOrUpdate(product);
        session.flush();
        session.close();
    }

    // Viết phương thức xóa sản phẩm.
    @Override
    public void deleteProduct(Integer productId) {
        Session session = sessionFactory.openSession();
        Product product = (Product) session.get(Product.class, productId);
        product.setId(productId);
        product.setActiveFlag(0);
        product.getUpdateDate();
        session.saveOrUpdate(product);
        session.flush();
        session.close();
    }

    // Phương thức viết thêm

    // Phương thức tìm kiếm sản phẩm.
    @Override
    @SuppressWarnings("unchecked")
    public List<Product> searchProduct(String search) {
        Session session = sessionFactory.getCurrentSession();
        List<Product> list = session.createQuery("FROM Product WHERE name LIKE '%" + search +
                "%' OR quantity LIKE '%" + search + "%' OR description LIKE '%" + search + "%' OR uniBrief LIKE '%" +
                search + "%' OR price LIKE '%" + search + "%'").list();
        return list;
    }

    // Phương thức lấy sản phẩm bởi id thương hiệu (Brand Id).
    @Override
    @SuppressWarnings("unchecked")
    public List<Product> getProductByBrand(Integer idBrand) {
        Session session = sessionFactory.getCurrentSession();
        List<Product> list = session.createQuery("FROM Product WHERE brandId.id = '" + idBrand + "'").list();

        return list;
    }

    // Viết phương thức phân trang sản phẩm.

    @Override
    @SuppressWarnings("unchecked")
    public List<Product> loadProductPage(String page) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM Product");
        int result = 0;
        if (page.equals("1")) {
            result = 0;
        } else {
            String temp = String.valueOf(page) + "0";
            result = Integer.parseInt(temp) - 10;
        }
        query.setFirstResult(result);
        query.setMaxResults(10);
        return query.list();
    }

    @Override
    public Product getProductByName(String nameProduct) {
        Session session = null;
        Transaction ts = null;
        try {
            session = sessionFactory.openSession();
            ts = session.beginTransaction();
            List<Product> products = new ArrayList<Product>();
            String hql = "FROM Product p WHERE p.name = :name";
            Query query = session.createQuery(hql);
            query.setParameter("name", nameProduct);
            products = query.list();
            if (products.size() > 0) {
                return products.get(0);
            }

            session.close();
        } catch (HibernateException e) {
            e.printStackTrace();

        }
        return null;
    }


}
