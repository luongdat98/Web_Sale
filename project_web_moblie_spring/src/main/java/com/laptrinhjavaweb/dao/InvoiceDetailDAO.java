package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.model.InvoiceDetail;

import java.util.Date;
import java.util.List;

public interface InvoiceDetailDAO {
    // Viết phương thức lấy danh sách hóa đơn chi tiết.
    public List getListInDe();
    // Lấy danh sách hóa đơn chi tiết bởi id.
    public InvoiceDetail getInvoiceDetailById(int invoiceDetailId);

    public List<InvoiceDetail> fillAll(Integer offset, Integer maxResult);

    public Integer count();
    // Viết phương thức lấy danh sách hóa đơn chi tiết bởi ngày khởi tạo.
    public InvoiceDetail getListByCreateDate(Date createDate);
}
