package com.heejoo.urang.domain;

import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class Product {

    private Integer idx;
    private String name;
    private Integer best;
    private Integer price;
    private Integer discount;
    private Integer resultPrice;
    private String description;
    private Integer enabled;
    private LocalDateTime createdAt;
    private LocalDateTime modifiedAt;
    private List<ProductImage> productImageList;

}
