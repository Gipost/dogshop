package me.courseproject.dogshop.service;

import me.courseproject.dogshop.dto.Item;
import me.courseproject.dogshop.entity.User;
import me.courseproject.dogshop.form.ItemForm;

import java.math.BigDecimal;
import java.util.Collection;

public interface CartService {
    void addItem(ItemForm itemForm);
    void removeItem(String productId);
    void updateQuantity(String productId, Integer quantity);

    Collection<Item> findAll();

    void  checkout(User user);

    BigDecimal getTotal();

}
