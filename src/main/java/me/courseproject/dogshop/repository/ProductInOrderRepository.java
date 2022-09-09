package me.courseproject.dogshop.repository;

import me.courseproject.dogshop.entity.ProductInOrder;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductInOrderRepository extends JpaRepository<ProductInOrder, Long> {

}
