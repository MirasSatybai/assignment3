package interfaces;

import model.shoppingCartItem;

import java.util.HashSet;


public interface CartActions {

    void addItem(shoppingCartItem sct, HashSet<shoppingCartItem> hs);

    HashSet<shoppingCartItem> deleteItem(HashSet<shoppingCartItem> hs, shoppingCartItem sci);
}
