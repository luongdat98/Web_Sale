package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.model.Cart;
import com.laptrinhjavaweb.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class CartDAOImpl implements CartDAO{
    @Autowired
    private ProductDAO productDAO;

    @Override
    public HashMap<Integer, Cart> addCart(int id, HashMap<Integer, Cart> cart) {
        Cart itemCart = new Cart();
        Product product = productDAO.getProductByIdProduct(id);
        if(product != null && cart.containsKey(id)){
            itemCart = cart.get(id);
            itemCart.setQuantity(itemCart.getQuantity() + 1);
            itemCart.setTotalPrice(itemCart.getQuantity() * itemCart.getProduct().getPrice());
        }
        else{
            itemCart.setProduct(product);
            itemCart.setQuantity(1);
//            itemCart.setQuantity(0);
            itemCart.setTotalPrice(product.getPrice());
        }
        cart.put(id, itemCart);
        return cart;
    }

    @Override
    public HashMap<Integer, Cart> editCart(int id, int quantity, HashMap<Integer, Cart> cart) {
        if(cart == null){
            return cart;
        }
        Cart itemCart = new Cart();
        if(cart.containsKey(id)){
            itemCart = cart.get(id);
            itemCart.setQuantity(quantity);
            double totalPrice = quantity * itemCart.getProduct().getPrice();
            itemCart.setTotalPrice(totalPrice);
        }
        cart.put(id, itemCart);
        return cart;
    }

    @Override
    public HashMap<Integer, Cart> deleteCart(int id, HashMap<Integer, Cart> cart) {
        if(cart == null){
            return cart;
        }
        if(cart.containsKey(id)){
            cart.remove(id);
        }
        return cart;
    }

//    @Override
//    public HashMap<Integer, Cart> deleteCart(int id, HashMap<Integer, Cart> cart) {
//        if(cart == null){
//            return cart;
//        }
//        if(cart.containsKey(id)){
//            cart.remove(id);
//            Cart cartRemove= cart.get(id);
//            totalQuantity(cart) = totalQuantity(cart) - cartRemove.getQuantity();
//
//        }
//        return cart;
//    }

    @Override
    public int totalQuantity(HashMap<Integer, Cart> cart) {
        int totalQuantity = 0;
        for(Map.Entry<Integer, Cart> itemCart : cart.entrySet()){
            totalQuantity += itemCart.getValue().getQuantity();
        }
        return totalQuantity;
    }

    @Override
    public double totalPrice(HashMap<Integer, Cart> cart) {
        double totalPrice = 0;
        for(Map.Entry<Integer, Cart> itemCart : cart.entrySet()){
            totalPrice += itemCart.getValue().getTotalPrice();
        }
        return totalPrice;
    }


}
