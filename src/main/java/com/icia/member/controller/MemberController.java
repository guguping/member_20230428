package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.sevice.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
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
    public String saveFaram(@ModelAttribute MemberDTO memberDTO) {
        System.out.println("memberDTO = " + memberDTO);
        boolean saveResult = memberService.save(memberDTO);
        System.out.println("saveResult = " + saveResult);
        if (saveResult) {
            return "index";
        } else {
            return "errorPage";
        }
    }

    @GetMapping("/memberLogin")
    public String login() {
        return "memberLogin";
    }

    @PostMapping("/memberLogin")
    public String loginFaram(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
        MemberDTO saveResult = memberService.login(memberDTO);
        session.setAttribute("DTO", saveResult);
        if (saveResult != null) {
            return "memberMain";
        } else {
            return "memberLogin";
        }
    }

    @GetMapping("/memberList")
    public String list(Model model) {
        List<MemberDTO> mList = memberService.list();
        model.addAttribute("mList", mList);
        return "memberList";
    }

    @GetMapping("/memberDetail")
    public String memberDetail(@RequestParam("id") Long id, Model model) {
        MemberDTO memberDTO = memberService.detailList(id);
        model.addAttribute("detailList", memberDTO);
        return "memberDetail";
    }

    @GetMapping("memberMain")
    public String memberMain() {
        return "memberMain";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
//        세션에 담긴 값 전체 삭제
        session.invalidate();

//        특정 파라미터만 삭제
//        session.removeAttribute("loginEmail");
        return "redirect:/";
    }

    @GetMapping("/memberDelete")
    public String memberDelete(@RequestParam("id") Long id, HttpSession session) {
        memberService.memberDelete(id);
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("/memberUpdate")
    public String memberUpdate(@RequestParam("id") Long id, Model model) {
        MemberDTO memberDTO = memberService.detailList(id);
        model.addAttribute("memberList", memberDTO);
        return "/memberUpdate";
    }

    @PostMapping("/memberUpdate")
    public String memberUpdate(@ModelAttribute MemberDTO memberDTO) {
        memberService.memberUpdate(memberDTO);
        return "redirect:/memberDetail?id=" + memberDTO.getId();
    }

    @PostMapping(value = "/emailCheck", produces = "application/text; charset=utf-8")
    public ResponseEntity emailCheck(@RequestParam("saveEmail") String saveEmail) {
        String dbEmail = memberService.emailCheck(saveEmail);
        if (dbEmail != null) {
            return new ResponseEntity(HttpStatus.CONFLICT);
        } else {
            return new ResponseEntity("사용 가능", HttpStatus.OK);
        }
    }
    @PostMapping(value = "/detail-ajax")
    public @ResponseBody MemberDTO detailAjax(@RequestBody MemberDTO memberDTO){
        MemberDTO detailDTO= memberService.detailList(memberDTO.getId());
        return detailDTO;
    }

}
