package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.model.Product;

import java.util.List;

public interface ProductDAO {

    // Lấy danh sách sản phẩm bởi thể loại (category).
    public List<Product> getListProductByCategory(int categoryId);

    // Lấy sản phẩm bởi Id.
    public Product getProductByIdProduct(int productId);

    // Phương thức viết cho trang admin:
//    public List getListProduct();

    // Hiển thị danh sách sản phẩm.
    public List<Product> getListProduct();

    // Xóa sản phẩm.
    public void deleteProduct(Product product);

    // Thêm sản phẩm.
    public void addProduct(Product product);

    // Sửa sản phẩm.
    public void editProduct(Product product);

    // Xóa sản phẩm.
    public void deleteProduct(Integer productId);

    // Phương thức viết thêm.

    // tim kiem san pham
    public List<Product> searchProduct(String search);

    // lay danh sach san pham tu hang san xuat
    public List<Product> getProductByBrand(Integer idBrand);

    // phan trang
    public List<Product> loadProductPage(String page);

    public Product getProductByName(String nameProduct);

}
