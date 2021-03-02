package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.model.Cart;

import java.util.HashMap;

public interface CartService {

    public HashMap<Integer, Cart> addCart(int id, HashMap<Integer, Cart> cart);
    public HashMap<Integer, Cart> editCart(int id, int quantity, HashMap<Integer, Cart> cart);
    public HashMap<Integer, Cart> deleteCart(int id, HashMap<Integer, Cart> cart);
    public int  totalQuantity(HashMap<Integer, Cart> cart);
    public double totalPrice(HashMap<Integer, Cart> cart);
}
