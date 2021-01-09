package com.yufei.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * test
 *
 * @Author: Mr.Yufei <435977043@qq.com>
 * @Date: 2021/1/9 周六 14:52
 * @Description: test
 */
@Controller
public class TestController {

    @GetMapping(value = {"/", "index"})
    public String index() {
        return "index";
    }
}
