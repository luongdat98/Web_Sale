package com.laptrinhjavaweb.controller;

import com.laptrinhjavaweb.model.Product;
import com.laptrinhjavaweb.service.CategoryService;
import com.laptrinhjavaweb.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/client/")
public class CategoryController extends BaseController{

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ProductService productService;

    // Action: category/getCategory trả về danh dách sách thể loại (Category).
    // Được dùng ở trang index.jsp (phần header).
//    @RequestMapping("getListCategory")
//    public ModelAndView showCategory(){
//        _mvShareView.addObject("listCategoryIndex", categoryService.getListCategory());
//        map.put("listCategoryIndex",categoryService.getListCategory());
//        _mvShareView.setViewName("user/index");
//        return _mvShareView;
//    }

    // Lấy Id của category thông qua @PathVariable. Id đc lấy ở trang index.jsp phần header.
    // Action: category/getCategory/id hiển thị danh sách sản phẩm bởi id Category.
    // Đc dùng ở trang category.jsp phần hiển thị sản phẩm.
    @RequestMapping("category/getListProductByIdCategory/{id}")
    public ModelAndView listProduct(@PathVariable(value = "id")  Integer id){


        _mvShareView.addObject("allProduct", productService.getListProductByCategory(id));
        _mvShareView.setViewName("user/category");
        return _mvShareView;
    }

    // Lấy Id của product thông qua @PathVariable. Id đc lấy ở trang category.jsp phần thân.
    // Action: category/getProductDetail/id hiển thị chi tiết sản phẩm bởi id Product.
    // Đc dùng ở trang single-product.jsp để hiển thị chi tiết sản phẩm (Product).
    @RequestMapping("category/getProductDetail/{id}")
    public ModelAndView showProduct(@PathVariable(value = "id")int id){

        Product product = (Product) productService.getProductByIdProduct(id);
        _mvShareView.addObject("productId", product);
        _mvShareView.setViewName("user/single-product");
        return _mvShareView;
    }

//    // List sản phẩm.
//    @RequestMapping("getListProductClient")
//    public ModelAndView getAllProduct(){
//        _mvShareView.addObject("listProductIndex",productService.getListProduct());
//        _mvShareView.setViewName("user/index");
//        return _mvShareView;
//    }
}
