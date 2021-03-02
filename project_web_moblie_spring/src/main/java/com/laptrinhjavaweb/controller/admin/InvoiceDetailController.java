package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.model.InvoiceDetail;
import com.laptrinhjavaweb.service.InvoiceDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/admin/invoiceDetail/")
public class InvoiceDetailController {
    @Autowired
    private InvoiceDetailService invoiceDetailService;

    // Action: invoiceDetail/getInvoiceDetail : trả về danh sách các hóa đơn chi tiết
    // ở trang admin quản lý hóa đơn
    @RequestMapping("getInvoiceDetail")
    public String showInvoiceDetail(Map<String, Object> map){
        map.put("listInvoiceDetail", invoiceDetailService.getListInDe());
        return "admin/manage_invoice";
    }
    // Action: invoiceDetail/getInvoiceDetailById/id : hiển thị chi tiết hóa đơn bởi id
    // hóa đơn chi tiết.
    @RequestMapping("getInvoiceDetailById/{id}")
    public String getInvoiceDetail(@PathVariable(value = "id") int id, ModelMap model){
        InvoiceDetail invoiceDetail = invoiceDetailService.getInvoiceDetailById(id);
        model.addAttribute("invoiceDetailObj",invoiceDetail);
        return "admin/info_invoice";
    }

    @RequestMapping("getCreateDate")
    public String showCreateDate(@PathVariable(value = "createdate")Date create){
        return "admin/manager_invoice";
    }

}
