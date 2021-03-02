package com.laptrinhjavaweb.controller;

import com.laptrinhjavaweb.model.Cart;
import com.laptrinhjavaweb.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
@RequestMapping("/client/")
public class CartController extends  BaseController{
    @Autowired
    private CartService cartService;

    // Hiển thị danh sách giỏ hàng ở trang cart.jsp
    @RequestMapping("cart/listCart")
    public ModelAndView index(){
        _mvShareView.setViewName("user/cart");
        return _mvShareView;
    }

    // Chức năng thêm sản phẩm vào cart
    // Có httpServletRequest
    // Có Session để biết những sản phẩm nào đc mua ở phiên làm việc đó.
    // @PathVariable lấy id sản phẩm bên trang single-product.jsp để thêm vào giỏ hàng.
    @RequestMapping("cart/addCart/{id}")
    public String addCart(HttpServletRequest request, HttpSession session, @PathVariable(value = "id") Integer id){
        HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
        if(cart == null){
            cart = new HashMap<Integer, Cart>();
        }
        cart = cartService.addCart(id, cart);
        session.setAttribute("Cart", cart);
        // Biến TotalQuantity đc dùng để hiển thị trên icon số lượng sản phẩm mua nằm ở phần menu (header) của mỗi trang.
        // Biến TotalPrice tương tự.
        session.setAttribute("TotalQuantityCart", cartService.totalQuantity(cart));
        session.setAttribute("TotalPriceCart", cartService.totalPrice(cart));
//        return "redirect:/category/getProductDetail/"+id;
        return "redirect:"+request.getHeader("Referer");
    }
    // @PathVariable lấy id sản phẩm bên trang single-product.jsp để thêm vào giỏ hàng.
    // @PathVariable lấy quantity sản phẩm bên trang single-product.jsp để thêm vào giỏ hàng.
    @RequestMapping("cart/editCart/{id}/{quantity}")
    public String editCart(HttpServletRequest request, HttpSession session, @PathVariable(value = "id") Integer id, @PathVariable Integer quantity){
        HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
        if(cart == null){
            cart = new HashMap<Integer, Cart>();
        }
        cart = cartService.editCart(id, quantity,cart);
        session.setAttribute("Cart", cart);
        session.setAttribute("TotalQuantityCart", cartService.totalQuantity(cart));
        session.setAttribute("TotalPriceCart", cartService.totalPrice(cart));
        return "redirect:"+request.getHeader("Referer");
    }

    @RequestMapping("cart/deleteCart/{id}")
    public String deleteCart(HttpServletRequest request, HttpSession session, @PathVariable(value = "id") Integer id){
        HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("Cart");
        if(cart == null){
            cart = new HashMap<Integer, Cart>();
        }
        cart = cartService.deleteCart(id, cart);
        session.setAttribute("Cart", cart);
        session.setAttribute("TotalQuantityCart", cartService.totalQuantity(cart));
        session.setAttribute("TotalPriceCart", cartService.totalPrice(cart));

        return "redirect:"+request.getHeader("Referer");
    }
}
