package com.heejoo.urang.module.product;

import com.heejoo.urang.domain.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProductMapper {

    List<Product> selectProductList();

    // List<Product> selectProductDetailByIdx(Product product);
}
