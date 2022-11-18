create table product(
code char(3) primary key,
pname varchar2(20) not null,
cost number(5),
pnum number(5),
jnum number(5),
sale number(5),
gcode char(3) not null ,
constraint fkproduct foreign key(gcode) references groupcode(gcode) 
)

alter table product modify pname varchar2(30)

insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('A01','컴퓨터DVD',1500,300,50,2000,'A');
insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('A02','컴퓨터CDROM',1200,500,100,2000,'A');
insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('A03','컴퓨터모니터',50000,400,50,2000,'A');
insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('A04','컴퓨터프린터',20000,400,100,2000,'A');
insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('B01','모바일케이스',1000,500,50,1200,'B');
insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('B02','모바일액정필름',500,1000,50,2000,'B');
insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('C01','냉장고손잡이',300,1000,50,300,'C');
insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('C02','냉장고도어',40000,300,50,50,'C');
insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('C03','냉장고냉장박스',3000,200,50,20,'C');
insert into product(code,pname,cost,pnum,jnum,sale,gcode) values('C04','냉장고냉동박스',3500,300,50,80,'C')

create table groupcode(
gcode char(3) primary key,
gname varchar2(20) not null
)

select * from groupcode
select * from product

insert into groupcode(gcode,gname) values('A','컴퓨터');
insert into groupcode(gcode,gname) values('B','냉장고');
insert into groupcode(gcode,gname) values('C','냉장소모품')