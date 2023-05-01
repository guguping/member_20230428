## Member페이지 실습

```sql
drop table if exists member_table;
create table member_table(
id bigint auto_increment primary key,
memberEmail varchar(50) unique,
memberPassword varchar(20) not null,
memberName varchar(20) not null,
memberBirth varchar(10) not null,
memberMobile varchar(30) not null
);

insert into member_table(memberEmail , memberPassword ,memberName,memberBirth,memberMobile)
	value('GUPING@naver.com','1234','GUPING','1996-02-20','010-6554-0220');

select * from member_table;

select * from member_table where memberEmail = 'GUPING@naver.com' and memberPassword = '1234';
```

## ICIA -  DAY 49 
### 회원 수정 (memberUpdate)<br>삭제(memberDelete)
### 비밀번호 제약조건 : 기존 비밀번호와 일치하면 수정<br>일치하지 않는다면 alert로 비밀번호 불일치 출력
### nav: 수정 로그인하면 상세페이지 보임
### CSS 약간 수정