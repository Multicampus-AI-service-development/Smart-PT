create table pt_member(
	id varchar(10) primary key,
	pwd varchar(12) not null,
	name varchar(50) not null,
	email varchar(50),
	age int(3) not null,
	nickname varchar(50),
	tel varchar(20) not null, 
	addr varchar(80) not null, 
	cm varchar(5) not null,
	kg varchar(5) not null,
	joinDate timestamp default now()
) default character set utf8 collate utf8_general_ci;

alter table pt_member add question varchar(50) not null;
alter table pt_member add answer varchar(50) not null;

drop table pt_member

insert into pt_member(id,pwd, name, question, answer, email,age,nickname,tel, addr, cm,kg)
		 values('hong','1212','홍길동','명대사','아버지를 아버지라 부르지 못 하고','hong@gmail.com',18,'길동이', '016-2485-7561', '조선', '186.5','70.5');

insert into pt_member(id,pwd, name, question, answer, email,age,nickname,tel, addr, cm,kg)
		 values('lee','1212','이순신','명대사','내 죽음을 적들에게 알리지 마라','soonsin@gmail.com',30,'거북선', '016-0808-9456', '조선', '190.5','87.5');



select * from pt_member;