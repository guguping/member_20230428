package com.icia.member.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberDTO {
    Long id;
    String memberEmail;
    String memberPassword;
    String memberName;
    String memberBirth;
    String memberMobile;
}
