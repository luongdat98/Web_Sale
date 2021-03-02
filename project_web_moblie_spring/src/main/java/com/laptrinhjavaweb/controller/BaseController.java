package com.laptrinhjavaweb.controller;

import com.laptrinhjavaweb.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.PostConstruct;

@Controller
public class BaseController {
    @Autowired
    CategoryService categoryService;
    public ModelAndView _mvShareView = new ModelAndView();

    @PostConstruct
    public ModelAndView init(){
    _mvShareView.addObject("listCategory", categoryService.getListCategory());
    return _mvShareView;
    }
}
