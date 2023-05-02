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

### ajax
#### ajax -(Asynchronous Javascript and XML) -비동기식 화면
#### 스크립트로도 가능하지만 제이쿼리로 사용하는게 더 편함

(ajax01.jsp , ajaxcontroller , @ResponseBody , 03 버튼 = 파라미터 넘기기 data에 담아 보내야 한다)
<br>(ajax05 - @ModelAttribute사용 , ajax06 - List출력 - 반복문 사용해보기)

## ICIA - DAY 50
(@RequestBody , ajax07 - json 넘겨주고 받기 , ajax08 - List로 받은 값 Body에 표로 넣어주기)

요청방식 get - body부분이 없고 header만 있기 때문에
리퀘스트 바디를 사용할 수 없다

@ResponseBody - 리턴 타입에 맞춰 return 값을 요청한곳에 다시 리턴해준다 

@RequestBody - HTTP의 BODY 부분에 RETURN을 담아 보낸다  
프론트에서 json타입으로 보내면 리퀘스트 바디로 받을 수 있다

ajax09 에서 사용됨
ResponseEntity - 스프링에서 제공하는 클래스 / 404 , 500 에러코드등을 ajax에서 핸들링할 수 있다

ajax10 - List를 받아 사용하는 방법
ResponseEntity - List 넘기기

최근에는 REST API, restful api이 사용되고 body를 주고 body를 받아 넣어주는 방식
지금까지 사용한 방식은 전통적인 MVC방식