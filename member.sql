

create table member(
	id varchar(15) primary key,
	password varchar(10) not null,
	name varchar(10) not null,
	age int not null,
	gender varchar(5) not null,
	email varchar(30)
);

desc member;

select * from member;
select * from BOARD;