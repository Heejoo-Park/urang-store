package com.heejoo.urang.module.product;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/urang")
public class ProductController {

    private final ProductService productService;

    @GetMapping("/product")
    public String product(Model model) {
        model.addAttribute("productList", productService.getProductList());
        System.out.println(model.getAttribute("productList"));
        return "/product/index";
    }

    @GetMapping("/product/detail/{idx}")
    public String detail(Model model,
                         @PathVariable(value = "idx") Integer idx) {
        model.addAttribute("productIdx", idx);
        model.addAttribute("product", productService.getProductDetail(idx));
        return "/product/detail";
    }
}
