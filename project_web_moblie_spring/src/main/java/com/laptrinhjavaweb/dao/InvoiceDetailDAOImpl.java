package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.model.InvoiceDetail;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public class InvoiceDetailDAOImpl implements InvoiceDetailDAO{
    // Nhớ tiêm SessionFactory để tạo session.
    @Autowired
    private SessionFactory sessionFactory;
    // Phương thức lấy danh sách hóa đơn chi tiết.
    @Override
    public List getListInDe() {
        return sessionFactory.getCurrentSession().createQuery("FROM InvoiceDetail").list();
    }
    // Phương thức lấy hóa đơn chi tiết bởi Id.
    @Override
    public InvoiceDetail getInvoiceDetailById(int invoiceDetailId) {
        return (InvoiceDetail) sessionFactory.getCurrentSession().get(InvoiceDetail.class,invoiceDetailId);
    }

    @Override
    public List<InvoiceDetail> fillAll(Integer offset, Integer maxResult) {
        return sessionFactory.getCurrentSession().createCriteria(InvoiceDetail.class).setFirstResult(offset!=null?offset:0).setMaxResults(maxResult!=null?maxResult:10).list();
    }

    @Override
    public Integer count() {
        return (Integer) sessionFactory.getCurrentSession().createCriteria(InvoiceDetail.class).setProjection(Projections.rowCount()).uniqueResult();
    }
    // Phương thức lấy danh sách hóa đơn chi tiết bởi ngày khởi tạo.
    @Override
    public InvoiceDetail getListByCreateDate(Date createDate) {
        return (InvoiceDetail) sessionFactory.getCurrentSession().get(InvoiceDetail.class,createDate);
    }
}
