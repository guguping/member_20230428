package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.sevice.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Controller
public class AjaxController {
    @GetMapping("/ajax01")
    public @ResponseBody String Ajax01(){
        System.out.println("AjaxController.ajax01");
        return "안녕하세요 저는 리턴입니다";
    }
    @PostMapping(value = "/ajax02")
    public @ResponseBody String ajax02(){
        System.out.println("AjaxController.ajax02");
        return "안녕하세요 저는 리턴입니다";
    }
    @GetMapping(value = "/ajax03")
    public @ResponseBody String ajax03(@RequestParam("param1") String param1,
                                       @RequestParam("param2") String param2){
        System.out.println("param1 = " + param1 + ", param2 = " + param2);
        return "good";
    }
    @PostMapping(value = "/ajax04")
    public @ResponseBody String ajax04(@RequestParam("param1") String param1,
                                       @RequestParam("param2") String param2,
                                       @RequestParam("qqq") String qqq){
        System.out.println("param1 = " + param1 + ", param2 = " + param2 + ", qqq = " + qqq);
        return "good";
    }
//    @GetMapping(value = "/ajax05")
//    public @ResponseBody String ajax05(@ModelAttribute MemberDTO memberDTO){
//        System.out.println("memberDTO = " + memberDTO);
//        return "ok";
//    }
    @GetMapping(value = "/ajax05")
    public @ResponseBody MemberDTO ajax05(@ModelAttribute MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        return memberDTO;
    }

    @Autowired
    private MemberService memberService;

    @GetMapping("/ajax06")
    public @ResponseBody List<MemberDTO> ajax06(){
        List<MemberDTO> memberDTOList = memberService.list();
        return memberDTOList;
    }
    @PostMapping("/ajax07")
    public @ResponseBody MemberDTO ajax07(@RequestBody MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        return memberDTO;
    }
    @PostMapping("/ajax08")
    public @ResponseBody List<MemberDTO> ajax08(@RequestBody MemberDTO memberDTO){
        List<MemberDTO> memberDTOList = memberService.list();
        memberDTOList.add(memberDTO);
        return memberDTOList;
    }
    @PostMapping(value = "/ajax09")
    public ResponseEntity ajax09(@ModelAttribute MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        return new ResponseEntity<>(memberDTO, HttpStatus.NOT_FOUND);
    }
    @PostMapping(value = "/ajax10")
    public ResponseEntity ajax10(@RequestBody MemberDTO member){
        List<MemberDTO> memberDTOList = memberService.list();
        Map<String , Object> resultMap = new HashMap<>();
        resultMap.put("member" , member);
        resultMap.put("memberList",memberDTOList);
        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }
}
