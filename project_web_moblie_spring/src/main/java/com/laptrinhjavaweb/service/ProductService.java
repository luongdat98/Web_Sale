package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.model.Brand;
import com.laptrinhjavaweb.model.Product;

import java.util.List;

public interface ProductService {

    // 8. lay danh sach sản phẩm bởi id thể loại.
    public List<Product> getListProductByCategory(int categoryId);

    // 5. Phương thức lấy sản phẩm bởi id sản phẩm.
    public Product getProductByIdProduct(int productId);

    // Phương thức viết cho trang admin:
//    public List getListProduct();

    // 6. Phương thức hiển thị danh sách sản phẩm.
    public List<Product> getListProduct();


    // 3. Phương thức xóa sản phẩm.
    public void deleteProduct(Product product);

    //  1. Phương thức thêm sản phẩm
    public void addProduct(Product product);

    // 2. Phương thức sửa sản phẩm.
    public void editProduct(Product product);

    // 4. Phương thức xóa sản phẩm.
    public void deleteProduct(Integer productId);


    // Phương thức viết thêm.

    // 7.tim kiem san pham
    public List<Product> searchProduct(String search);

    // 9. lay danh sach san pham tu hang san xuat
    public List<Product> getProductByBrand(Integer idBrand);

    // 10. Phân trang
    public List<Product> loadProductPage(String page);

    public Product getProductByName(String nameProduct);


}
