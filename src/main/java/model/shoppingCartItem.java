package model;

import interfaces.CartActions;

public class shoppingCartItem {
    private String itemName;
    private int quantity;

    public shoppingCartItem(){}

    public shoppingCartItem(String itemName, int quantity){
        this.itemName = itemName;
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

}
