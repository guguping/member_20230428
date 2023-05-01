package com.icia.member.repository;

import com.icia.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public boolean save(MemberDTO memberDTO) {
        try {
            sql.insert("Member.save",memberDTO);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public List<MemberDTO> list() {
        return sql.selectList("Member.list");
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login",memberDTO);
    }

    public MemberDTO detailList(Long id) {
        return sql.selectOne("Member.detailList",id);
    }

    public void memberDelete(Long id) {
        sql.delete("Member.delete",id);
    }

    public void memberUpdate(MemberDTO memberDTO) {
        sql.update("Member.update",memberDTO);
    }

    public String saveEmail(String saveEmail) {
        return sql.selectOne("Member.saveEmail",saveEmail);
    }
}
