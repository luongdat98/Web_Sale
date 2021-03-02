package com.laptrinhjavaweb.controller;

import com.laptrinhjavaweb.model.Role;
import com.laptrinhjavaweb.model.User;
import com.laptrinhjavaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;

@Controller
public class UserController extends BaseController{
    @Autowired
    public UserService userService;

//    @RequestMapping("/login/")
//    public ModelAndView login(){
//        _mvShareView.setViewName("user/login");
//        return _mvShareView;
//    }
    @RequestMapping(value = "checkUsername", method = RequestMethod.POST)
    @ResponseBody
    public String checkUsername(@RequestParam("username") String username, HttpServletRequest request, HttpServletResponse response) {
        String result = "";
        if (userService.findByUsername(username.trim()) != null)
            result = "exist";
        return result;
    }

        @RequestMapping(value = "checkEmail", method = RequestMethod.POST)
        @ResponseBody
        public String checkEmail(@RequestParam("email") String email, HttpServletRequest request, HttpServletResponse response) {
            String result = "";
            if (userService.findByEmail(email.trim()) != null)
                result = "exist";
            return result;
        }

        // trang client:
    @RequestMapping(value = "/client/login", method = RequestMethod.GET)
    public ModelAndView showLogin() {

        User loginBean = new User();
        _mvShareView.addObject("loginBean", loginBean);
        _mvShareView.setViewName("user/login");
        return _mvShareView;
    }

    @RequestMapping(value = "/client/login", method = RequestMethod.POST)
    public ModelAndView excuteLogin(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("loginBean") User loginBean) {
        if (userService.isUser(loginBean.getUsername(), loginBean.getPassword())) {
            HttpSession session = request.getSession();
            session.setAttribute("username", loginBean.getUsername());
            _mvShareView.setViewName("user/index");

        } else {
            request.setAttribute("message", "Invalid username or password");
            _mvShareView.setViewName("user/login");
        }
        return _mvShareView;
    }

    @RequestMapping("/client/logout")
    public ModelAndView clientLogout(HttpServletRequest request, HttpServletResponse response) {
        _mvShareView.setViewName("user/index");
        HttpSession session = request.getSession();
        //huy session
        session.invalidate();
        return _mvShareView;
    }

    @RequestMapping(value = "/client/register", method = RequestMethod.GET)
    public ModelAndView doGetRegisterUser(HttpServletRequest request, HttpServletResponse response) {
        _mvShareView.setViewName("user/register");
        User addUser = new User();
        _mvShareView.addObject("registerUser", addUser);
        return _mvShareView;
    }

    @RequestMapping(value = "/client/register", method = RequestMethod.POST)
    public ModelAndView doPostRegisterUser(HttpServletRequest request, HttpServletResponse response, @Validated @Valid @ModelAttribute("registerUser") User addUser, BindingResult result) {

        if (userService.findByUsername(addUser.getUsername()) != null) {
            result.rejectValue("username", "registerUser", "username đã tồn tại! vui lòng nhập username khác");
        }
        if (userService.findByEmail(addUser.getEmail()) != null) {
            result.rejectValue("email", "registerUser", "email đã tồn tại! vui lòng nhập email khác");
        }

        if (userService.checkPassword(addUser.getPassword(), addUser.getPasswordConfirm()) == false) {
            result.rejectValue("password", "registerUser", "password và re-password phải trùng khớp");
        }
        if (result.hasErrors()) {
            _mvShareView.setViewName("user/register");
        } else {
            Role role = userService.getRole("user");
            System.out.println("====== " + role.getId());
            addUser.addRole(role);
            userService.saveUser(addUser);
            HttpSession session = request.getSession();
            session.setAttribute("username", addUser.getUsername());
            _mvShareView.setViewName("user/index");
        }
        return _mvShareView;

    }

    // Admin:

    @RequestMapping("/managerUser")
    public ModelAndView managerUser() {
        ModelAndView modelAndView = new ModelAndView("admin/manage_user");
        ArrayList<User> listUsers = (ArrayList<User>) userService.getListUser();
        modelAndView.addObject("listUser", listUsers);
        return modelAndView;
    }
    @RequestMapping(value = "admin/dellUser/{id}")
    public String delUser(@PathVariable("id") Integer id, HttpServletRequest request) {

        User user = userService.getUserById(id);
        if (user != null) {
            System.out.println("=== delete User==" + user);
            userService.delUser(user);
        }

        return "redirect:/managerUser";
    }


    @RequestMapping(value = "/admin/editUser/{id}")
    public String geteditUserForm(@PathVariable(value = "id") Integer id, ModelMap modelMap) {
        User userEdit = userService.getUserById(id);
        modelMap.addAttribute("userEdit", userEdit);
        return "admin/editUser";
////        ModelAndView mav = new ModelAndView("admin/editUser");
////        mav.addObject("userEdit", userEdit);
//        return new ModelAndView("admin/editUser", "userEdit", userEdit);
    }

    @RequestMapping(value = "/admin/editUserad", method = RequestMethod.POST)
    public String updateUser(@Valid @ModelAttribute(value = "userEdit") User user, BindingResult result, HttpServletRequest request) {

//        if (userService.findByUsername(user.getUsername()) != null) {
//            result.rejectValue("username", "userEdit", "username đã tồn tại! vui lòng nhập username khác");
//        }
//        if (userService.findByEmail(user.getEmail()) != null) {
//            result.rejectValue("email", "userEdit", "email đã tồn tại! vui lòng nhập email khác");
//        }

        if (userService.checkPassword(user.getPassword(), user.getPasswordConfirm()) == false) {
            result.rejectValue("password", "userEdit", "password và re-password phải trùng khớp");
        }
        if(result.hasErrors()){
            return "admin/editUser";
        }
        String roleName = request.getParameter("permissionEdit");
        Role role = userService.getRole(roleName);
        user.addRole(role);
        user.setId(user.getId());
        userService.editUser(user);
        return "redirect:/managerUser";
    }
    @RequestMapping("admin/logout")
    public ModelAndView adminLogout(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("redirect:/admin/home");
        HttpSession session = request.getSession();
        //huy session
        session.invalidate();
        return mav;
    }

    @RequestMapping(value = "/adduser", method = RequestMethod.GET)
    public ModelAndView doGetAddUser(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView view = new ModelAndView("admin/addUser");
        User addUser = new User();
        view.addObject("addUser", addUser);
        return view;
    }

    @RequestMapping(value = "/adduser", method = RequestMethod.POST)
    public ModelAndView doPostAddUser(HttpServletRequest request, HttpServletResponse response, @Validated @Valid @ModelAttribute("addUser") User addUser, BindingResult result) {
        ModelAndView view = null;


        if (userService.findByUsername(addUser.getUsername()) != null) {
            result.rejectValue("username", "addUser", "username đã tồn tại! vui lòng nhập username khác");
        }
        if (userService.findByEmail(addUser.getEmail()) != null) {
            result.rejectValue("email", "addUser", "email đã tồn tại! vui lòng nhập email khác");
        }

        if (userService.checkPassword(addUser.getPassword(), addUser.getPasswordConfirm()) == false) {
            result.rejectValue("password", "addUser", "password và re-password phải trùng khớp");
        }
        if (result.hasErrors()) {
            view = new ModelAndView("admin/addUser");
        } else {

            String roleName = (String) request.getParameter("permission");
            System.out.println("============ " + roleName);
            Role role = userService.getRole(roleName);
            System.out.println("====== " + role.getId());
            addUser.addRole(role);
            userService.saveUser(addUser);
            view = new ModelAndView("admin/index");
        }
        return view;

    }


}
