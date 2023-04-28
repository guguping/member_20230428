package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.sevice.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;
    @GetMapping("/memberSave")
    public String save() {
        return "memberSave";
    }
    @PostMapping("/memberSave")
    public String saveFaram(@ModelAttribute MemberDTO memberDTO){
        boolean saveResult = memberService.save(memberDTO);
        if(saveResult){
            return "index";
        }else{
            return "errorPage";
        }
    }

    @GetMapping("/memberLogin")
    public String login() {
        return "memberLogin";
    }
    @PostMapping("/memberLogin")
    public String loginFaram(@ModelAttribute MemberDTO memberDTO){
        Integer saveResult = memberService.login(memberDTO);
        if(saveResult!=null) {
            return "memberMain";
        }else {
            return "errorPage";
        }
    }

    @GetMapping("/memberList")
    public String list(Model model){
        List<MemberDTO> mList = memberService.list();
        model.addAttribute("mList",mList);
        return "memberList";
    }
}
