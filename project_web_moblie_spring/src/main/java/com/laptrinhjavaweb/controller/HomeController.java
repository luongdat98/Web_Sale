package com.laptrinhjavaweb.controller;

import com.laptrinhjavaweb.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
    @Autowired
    private ProductService productService;

//    @RequestMapping(value = {"/", "/client"})

    @RequestMapping("/client")

    public ModelAndView index(){
        _mvShareView.addObject("listProductIndex",productService.getListProduct());
        _mvShareView.setViewName("user/index");
        return _mvShareView;
    }

}
