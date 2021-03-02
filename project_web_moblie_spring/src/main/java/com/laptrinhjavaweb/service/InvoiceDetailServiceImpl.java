package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dao.InvoiceDetailDAO;
import com.laptrinhjavaweb.model.InvoiceDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class InvoiceDetailServiceImpl implements InvoiceDetailService{
    @Autowired
    private InvoiceDetailDAO invoiceDetailDAO;
    // Phương thức lấy danh sách hóa đơn chi tiết.
    @Transactional
    public List getListInDe() {
        return invoiceDetailDAO.getListInDe();
    }
    // Phương thức lấy hóa đơn chi tiết bởi Id.
    @Transactional
    public InvoiceDetail getInvoiceDetailById(int invoiceDetailId) {
        return invoiceDetailDAO.getInvoiceDetailById(invoiceDetailId);
    }

    @Transactional
    public List<InvoiceDetail> fillAll(Integer offset, Integer maxResult) {
        return invoiceDetailDAO.fillAll(offset, maxResult);
    }

    @Transactional
    public Integer count() {
        return invoiceDetailDAO.count();
    }
    // Phương thức lấy danh sách hóa đơn chi tiết bởi ngày khởi tạo.
    @Transactional
    public InvoiceDetail getListByCreateDate(Date createDate) {
        return invoiceDetailDAO.getListByCreateDate(createDate);
    }
}
