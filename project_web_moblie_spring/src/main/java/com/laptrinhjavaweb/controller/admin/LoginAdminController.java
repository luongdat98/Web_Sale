package com.laptrinhjavaweb.controller.admin;

import com.laptrinhjavaweb.model.User;
import com.laptrinhjavaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginAdminController {

    @Autowired
    public UserService userService;

    @RequestMapping(value = "/admin/home")
    public ModelAndView showRequest(HttpSession session) {
        ModelAndView mav = null;
        if(session.getAttribute("adminLoged") != null){
            mav = new ModelAndView("admin/index");
        }
        else {
            mav = new ModelAndView("redirect:/admin/login");
        }
        return mav;
    }

    @RequestMapping(value = "/admin/login", method = RequestMethod.GET)
    public ModelAndView showLogin() {
        ModelAndView view = new ModelAndView("admin/login");
        User loginBean = new User();
        view.addObject("loginBean", loginBean);
        return view;
    }


    @RequestMapping(value = "/admin/login", method = RequestMethod.POST)
    public ModelAndView excuteLogin(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("loginBean") User loginBean) {
        ModelAndView view = null;
        HttpSession session = request.getSession();
        if (userService.isUser(loginBean.getUsername(), loginBean.getPassword())) {
            request.setAttribute("loggedInUser", loginBean.getUsername());
            // Kiểm tra user có phải admin ko.
            if (userService.listUserAdmin().contains(loginBean.getUsername())) {
                session.setAttribute("adminLoged", loginBean.getUsername());
                view = new ModelAndView("admin/index");
            } else {
                request.setAttribute("message", "User không có quyền truy cập quản trị");
                view = new ModelAndView("admin/login");
            }

        } else {
            request.setAttribute("message", "Invalid username or password");
            view = new ModelAndView("admin/login");
        }
        return view;
    }

}
