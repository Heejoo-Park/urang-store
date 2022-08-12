package com.heejoo.urang.module.product;

import com.heejoo.urang.domain.Product;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductMapper productMapper;

    public List<Product> getProductList() {
        return productMapper.selectProductList();
    }

    public List<Product> getProductDetail(Integer idx) {
        // 1
        // Product product = Product.builder().idx(idx).build();
        // 2 @Builder
        // Product.ProductBuilder builder = Product.builder().idx(idx);
        // Product product = builder.build();
        // return productMapper.selectProductDetailByIdx(product);
        return null;
    }
}
