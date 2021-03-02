package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dao.CategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService{
    // Nhớ tiêm DAO để thực hiện gọi phương thức thông qua nó.
    @Autowired
    private CategoryDAO categoryDAO;

    // Nhớ chú thích @Transactional để sessionFactory hiểu để gọi hàm thực hiện.
    // Thực hiện phương thức lấy danh sách thể loại (Category).
    // Phương thức trả về một danh sách.
    @Transactional
    public List getListCategory() {
        return categoryDAO.getListCategory();
    }

    public CategoryDAO getCategoryDAO() {
        return categoryDAO;
    }

    public void setCategoryDAO(CategoryDAO categoryDAO) {
        this.categoryDAO = categoryDAO;
    }
}
