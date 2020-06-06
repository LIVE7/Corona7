create table corona(
  idx number(8) primary key,--등록번호
  latitude number(16,10) not null,--위도
  longitude number(16,10) not null,--경도
  info VARCHAR2(128) not null,--확진자 정보
  indate date default sysdate --등록일
);

create sequence corona_seq nocache;

select * from corona;

commit;