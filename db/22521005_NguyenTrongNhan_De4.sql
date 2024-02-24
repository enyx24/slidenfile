create database QLVMXH
use QLVMXH

--1
create table NguoiDung (
	MaND char(5) not null,
	HoTenND varchar(40),
	NGSINH datetime,
)

create table Kenh (
	MaKenh char(7) not null,
	TenKenh varchar(40),
	SLTheoDoi int,
	MaCK char(5),
)

create table Video (
	MaVideo char(7) not null,
	TenVideo varchar(90),
	ThoiLuong int,
	GHDT int,
	TgDang datetime,
	MaKenh char(7),
)

create table LuotBinhLuan (
	MaLBL char(6) not null,
	MaNBL char(5),
	MaCLBL char(6),
	MaVideo char(7),
	TGBL datetime,
	NDBL varchar(100),
)

alter table NguoiDung 
add constraint 
pk_nd primary key (MaND);

alter table Kenh
add constraint 
pk_k primary key (Makenh);

alter table video
add constraint
pk_v primary key (mavideo);

alter table luotbinhluan
add constraint
pk_lbl primary key (malbl);

alter table kenh
add constraint fk_nd
foreign key (mack) references nguoidung (mand)

alter table video
add constraint fk_vid
foreign key (makenh) references kenh (makenh)

alter table luotbinhluan
add constraint 
fk_nbl foreign key (manbl) references nguoidung (mand),
foreign key (maclbl) references luotbinhluan (malbl),
foreign key (mavideo) references video (mavideo);

--2
set dateformat dmy

insert into nguoidung values('ND001', 'Nguyen Van Hao', '15/05/1990')
insert into nguoidung values('ND002', 'Tran Thi Bich', '28/12/1985')
insert into nguoidung values('ND003', 'Le Van Cuong', '03/09/1998')

insert into kenh values('CHAN101', 'Travel Vlog', 5206, 'ND001')
insert into kenh values('CHAN102', 'Cooking 101', 3519, 'ND002')
insert into kenh values('CHAN103', 'Gaming Lounge', 8250, 'ND003')

insert into video values('VIDE101', 'Easy Pasta Recipe', 3729, 0, '18/02/2023 15:27:00', 'CHAN102')
insert into video values('VIDE301', 'Summer Adventures', 1539, 18, '12/11/2023 06:30:00', 'CHAN101')
insert into video values('VIDE302', 'Beginners Guide to RPGs', 2830, 13, '27/12/2023 04:38:00', 'CHAN103')

insert into LuotBinhLuan values('LBL401', 'ND002', NULL, 'VIDE301', '12/11/2023 08:30:00', 'Great video!')
insert into LuotBinhLuan values('LBL412', 'ND001', 'LBL401', 'VIDE301', '12/11/2023 08:45:00', 'Thank you!')
insert into LuotBinhLuan values('LBL493', 'ND003', NULL, 'VIDE301', '16/11/2023 08:30:00', 'So helpful!')

--3
update video
set GHDT = 10
where MaVideo = 'VIDE302'

--4
alter table video
add XEPHANG varchar(10);

update video 
set video.xephang = 'VIP'
where video.makenh in (
	select makenh
	from Kenh
	where kenh.SLTheoDoi > 5000
) 

--5
 