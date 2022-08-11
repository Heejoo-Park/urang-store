package com.heejoo.urang.module.store;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/urang")
public class StoreController {

    @GetMapping("/store")
    public String index() {
        return "/store/index";
    }
}
