package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.model.Brand;
import com.laptrinhjavaweb.model.Category;
import com.laptrinhjavaweb.model.Product;
import com.laptrinhjavaweb.service.BrandService;
import com.laptrinhjavaweb.service.CategoryService;
import com.laptrinhjavaweb.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private BrandService brandService;
    @Autowired
    private CategoryService categoryService;

    // Phân trang.
    @Bean
    public MultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSize(10240000);
        return multipartResolver;
    }

    // Hiển thị danh sách sản phẩm đổ vào trang listProduct.jsp.
    @RequestMapping("/admin/getListProduct")
    public ModelAndView getAllProduct(){
        List<Product> products = productService.getListProduct();
        return new ModelAndView("admin/listProduct", "product", products);
    }

//    @RequestMapping("/getProductById/{productId}")
//    public ModelAndView getProductById(@PathVariable(value = "productId") Integer productId) {
//        Product brand = productService.getProductByIdProduct(productId);
//        return new ModelAndView("brandPage", "brandObj", brand);
//
//    }
        // Form thêm nhiều hình sản phẩm:

        // Phương thức thêm sản phẩm. Hiển thị Form nhập.
        @RequestMapping(value = "/admin/addProduct", method = RequestMethod.GET)
        public String getProductForm(Model model) {
            Product product = new Product();
            List<Brand> brands = brandService.getAllBrands();
            List<Category> categories = categoryService.getListCategory();
            model.addAttribute("productFormObj", product);
            model.addAttribute("brands", brands);
            model.addAttribute("categories", categories);
            return "admin/addProduct";
        }
    // Phương thức thêm sản phẩm.
//        @RequestMapping(value = "/admin/addProduct", method = RequestMethod.POST)
//        public String addProduct(@Valid @ModelAttribute(value = "productFormObj") Product product, BindingResult result, HttpServletRequest request) {
//            // Binding Result is used if the form that has any error then it will
//            // redirect to the same page without performing any functions
//            if (result.hasErrors())
//                return "admin/addProduct";
//            productService.addProduct(product);
//            MultipartFile imgMain = product.getImgMain();
//            List<MultipartFile> imgList = product.getImgList();
//            List<String> fileNames = new ArrayList<String>();
//            String rootDirectory = request.getSession().getServletContext().getRealPath("/");
//            if (imgMain != null && !imgMain.isEmpty()) {
//                for (MultipartFile multipartFile : imgList) {
//                    String fileName = multipartFile.getOriginalFilename();
//                    fileNames.add(fileName);
//                    File imageFile = new File(request.getServletContext().getRealPath("/resources/image/product"), fileName);
//                    try{
//                        multipartFile.transferTo(imageFile);
//
//                    } catch (IOException e) {
//                        e.printStackTrace();
//                    }
//                }
//            }
//            return "redirect:/admin/getListProduct";
//        }

        // Form thêm 1 hình sản phẩm.

    @RequestMapping(value = "/admin/addProduct", method = RequestMethod.POST)
    public String addProductOne(@Valid @ModelAttribute(value = "productFormObj") Product product, BindingResult result, HttpServletRequest request) {
        // Binding Result is used if the form that has any error then it will
        // redirect to the same page without performing any functions

        if(productService.getProductByName(product.getName()) != null){
            result.rejectValue("name", "productFormObj", "Tên sản phẩm đã tồn tại");
        }

        if (result.hasErrors())
            return "admin/addProduct";

        productService.addProduct(product);
        MultipartFile imgMain = product.getImgMain();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        if (imgMain != null && !imgMain.isEmpty()) {
            Path path = Paths.get(rootDirectory+"/resources/image/product/pro" + product.getId() + ".jpg");
            System.out.println(path.toString());
            try {
                imgMain.transferTo(new File(path.toString()));
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "redirect:/admin/getListProduct";
    }




    // Phương thức xóa sản phẩm.
    @RequestMapping("delete/{productId}")
    public String deleteProduct(@PathVariable(value = "productId") Product productId, HttpServletRequest request) {
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        Path path = Paths.get(rootDirectory+"/resources/image/product/pro" +productId.getId() + ".jpg");

        if (Files.exists(path)) {
            try {
                Files.delete(path);

            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        productService.deleteProduct(productId);
        return "redirect:/admin/getListProduct";
    }

    // Phương thức xóa ản phẩm bởi id sản phẩm (coi lại phương thức này, kẻo ko sử dụng).
    @RequestMapping("delete1/{productId}")
    public String deleteProduct(@PathVariable(value = "productId") int productId,HttpServletRequest request) {
        Product product= new Product();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        Path path = Paths.get(rootDirectory+"/resources/image/product/pro" + product.getId() + ".png");

        if (Files.exists(path)) {
            try {
                Files.delete(path);

            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        productService.deleteProduct(productId);
        return "redirect:/admin/getListProduct";

    }


    // Phương thức chỉnh sửa sản phẩm theo id sản phẩm đổ vào trang editProduct.jsp
    @RequestMapping(value = "editProduct/{productId}")
    public ModelAndView getEditForm(@PathVariable(value = "productId") Integer productId) {
        Product product = productService.getProductByIdProduct(productId);
        return new ModelAndView("admin/editProduct", "editProductObj", product);
    }

    // Phương thức thực hiển chỉnh sửa sản phẩm.
    @RequestMapping(value = "editProduct", method = RequestMethod.POST)
    public String editProduct(@ModelAttribute(value = "editProductObj") Product product, BindingResult result, HttpServletRequest request) {
        if(result.hasErrors()){
        return "admin/editProduct";
        }
        MultipartFile imgMain = product.getImgMain();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        Path path = Paths.get(rootDirectory + "/resources/image/product/pro"+product.getId()+".jpg");
        System.out.println(path.toString());
        if(imgMain !=null && !imgMain.isEmpty()){
            try{
                imgMain.transferTo(new File(path.toString()));
            }catch(Exception ex){
                ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
            }
        }
        productService.editProduct(product);
        return "redirect:/admin/getListProduct";
    }

    //phương thức check tên product đã tồn tại hay chưa
    @RequestMapping(value = "/checkNameProductExist", method = RequestMethod.POST)
    @ResponseBody
    public String checkNameProductExist(@RequestParam("nameProduct") String nameProduct){
        String result= "";
        if(productService.getProductByName(nameProduct.trim()) != null){
            result= "exist";
        }
        return result;
    }

}
