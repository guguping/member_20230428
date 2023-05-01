package com.icia.member.sevice;

import com.icia.member.dto.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

    public boolean save(MemberDTO memberDTO) {
        boolean saveResult = memberRepository.save(memberDTO);
        return saveResult;
    }

    public List<MemberDTO> list() {
        return memberRepository.list();
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return memberRepository.login(memberDTO);
    }

    public MemberDTO detailList(Long id) {
        return memberRepository.detailList(id);
    }

    public void memberDelete(Long id) {
        memberRepository.memberDelete(id);
    }

    public void memberUpdate(MemberDTO memberDTO) {
        memberRepository.memberUpdate(memberDTO);
    }

    public String emailCheck(String saveEmail) {

        return memberRepository.saveEmail(saveEmail);
    }
}
