package model;

import interfaces.CartActions;


import java.util.HashSet;
import java.util.Queue;
import java.util.Set;

public class shoppingCart implements CartActions {
    private Set<shoppingCartItem> cart;

    public shoppingCart(){}

    public shoppingCart(Set<shoppingCartItem> cart){
        this.cart = cart;
    }

    public Set<shoppingCartItem> getCart() {
        return cart;
    }

    public void setCart(Set<shoppingCartItem> cart) {
        this.cart = cart;
    }

    @Override
    public void addItem(shoppingCartItem sct, HashSet<shoppingCartItem> hs) {
        hs.add(sct);
    }

    @Override
    public HashSet<shoppingCartItem> deleteItem(HashSet<shoppingCartItem> hs, shoppingCartItem sci) {
        hs.remove(sci);
        return hs;
    }
}
