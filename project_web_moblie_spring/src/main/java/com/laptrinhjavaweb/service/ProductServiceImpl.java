package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dao.ProductDAO;
import com.laptrinhjavaweb.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
    @Autowired
    private ProductDAO productDAO;

    // 8. lay danh sach sản phẩm bởi id thể loại.
    @Transactional
    public List<Product> getListProductByCategory(int categoryId) {
        return productDAO.getListProductByCategory(categoryId);
    }

    // 5. Phương thức lấy sản phẩm bởi id sản phẩm.
    @Transactional
    public Product getProductByIdProduct(int productId) {
        return productDAO.getProductByIdProduct(productId);
    }

    // Phương thức viết cho trang admin:
//    @Transactional
//    public List getListProduct() {
//        return productDAO.getListProduct();
//    }

    // 6. Phương thức hiển thị danh sách sản phẩm.
    @Transactional
    public List<Product> getListProduct() {
        return (List<Product>) productDAO.getListProduct();
    }

    // 3. Xóa sản phẩm.
    @Transactional
    public void deleteProduct(Product product) {
        product.setActiveFlag(0);
        productDAO.deleteProduct(product);
    }

    // 1. Phương thức thêm sản phẩm.
    @Transactional
    public void addProduct(Product product) {
//        Category category = new Category();
//        category.setId(1);
//        Brand brand = new Brand();
//        brand.setId(1);
//        product.setCategory(category);
//        product.setBrand(brand);
//        product.setCode("2");
//        product.setPrice(3000.0);
//        product.setDescription("New");
        product.setActiveFlag(1);
        product.setCreateDate(new Date());
        product.setUpdateDate(new Date());
        productDAO.addProduct(product);
    }

    // 2. Sửa sản phẩm.
    @Transactional
    public void editProduct(Product product) {
        product.setActiveFlag(1);
        productDAO.editProduct(product);
    }

    // 4. Xóa sản phẩm
    @Transactional
    public void deleteProduct(Integer productId) {
        productDAO.deleteProduct(productId);
    }


    // Phương thức viết thêm:


    // 7.tim kiem san pham
    @Transactional
    public List<Product> searchProduct(String search) {
        return productDAO.searchProduct(search);
    }

    // 9. lay danh sach san pham tu hang san xuat
    @Transactional
    public List<Product> getProductByBrand(Integer idBrand) {
        return null;
    }

    // 10. Phân trang
    @Transactional
    public List<Product> loadProductPage(String page) {
        return null;
    }

    @Transactional
    public Product getProductByName(String nameProduct) {
        return productDAO.getProductByName(nameProduct);
    }

}
