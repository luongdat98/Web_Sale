package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dao.CartDAO;
import com.laptrinhjavaweb.model.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;

@Service
public class CartServiceImpl implements CartService{
    @Autowired
    private CartDAO cartDAO;

    @Transactional
    public HashMap<Integer, Cart> addCart(int id, HashMap<Integer, Cart> cart) {
        return cartDAO.addCart(id, cart);
    }

    @Transactional
    public HashMap<Integer, Cart> editCart(int id, int quantity, HashMap<Integer, Cart> cart) {
        return cartDAO.editCart(id, quantity, cart);
    }

    @Transactional
    public HashMap<Integer, Cart> deleteCart(int id, HashMap<Integer, Cart> cart) {
        return cartDAO.deleteCart(id, cart);
    }

    @Transactional
    public int totalQuantity(HashMap<Integer, Cart> cart) {
        return cartDAO.totalQuantity(cart);
    }

    @Transactional
    public double totalPrice(HashMap<Integer, Cart> cart) {
        return cartDAO.totalPrice(cart);
    }
}
