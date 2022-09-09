package me.courseproject.dogshop.controller;

import me.courseproject.dogshop.entity.ProductCategory;
import me.courseproject.dogshop.entity.ProductInfo;
import me.courseproject.dogshop.service.CategoryService;
import me.courseproject.dogshop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;


@Controller
public class CategoryController {
    @Autowired
    CategoryService categoryService;
    @Autowired
    ProductService productService;


    @GetMapping("/category/{type}")
    public ModelAndView showOne(@PathVariable("type") Integer categoryType,
                                @RequestParam(value = "page", defaultValue = "1") Integer page,
                                @RequestParam(value = "size", defaultValue = "3") Integer size,
                                Map<String, Object> map) {

        ProductCategory res = categoryService.findByCategoryType(categoryType);
        PageRequest request = PageRequest.of(page - 1, size);
        Page<ProductInfo> productInCategory = productService.findAllInCategory(categoryType, request);
        map.put("category", res);
        map.put("products", productInCategory);
        map.put("currentPage", page);
        map.put("size", size);
        return new ModelAndView("/category/show", map);
    }
}
