package com.heejoo.urang.domain;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ProductImage {

    private Integer idx;
    private Integer productIdx;
    private String imageUrl;
    private Integer imageOrder;
    private Integer enabled;
    private LocalDateTime createdAt;
    private LocalDateTime modifiedAt;

}
