package com.icia.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AjaxViewController {
    @GetMapping("/ajax-view01")
    public String ajaxView01(){
        return "/ajax01";
    }
}
